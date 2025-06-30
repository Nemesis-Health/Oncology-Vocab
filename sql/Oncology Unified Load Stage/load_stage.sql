--1. Update latest_update field to new date
DO $LATESTUPDATE$
DECLARE
	pVocabs CONSTANT VARCHAR[]:=ARRAY['Cancer Modifier','CAP','CIEL','CIM10','HCPCS','HemOnc','ICD10','ICD10CM','ICD10CN','ICD10GM','ICD10PCS','ICD9CM','ICDO3','KCD7','LOINC','MedDRA','NAACCR','Nebraska Lexicon','OMOP Genomic','OPCS4','Read','SNOMED']; --SET VOCABULARIES
	pSchemaName CONSTANT TEXT:='dev_onco'; --SET SCHEMA

	pVocab concept.vocabulary_id%TYPE;
	pLatestUpdate vocabulary_conversion.latest_update%TYPE;
	pVocabVersion vocabulary.vocabulary_version%TYPE;
	pGeneratedStmt TEXT;
	i INT;
BEGIN
	pGeneratedStmt:='DO $_$ BEGIN';

	FOR i IN 1..ARRAY_UPPER(pVocabs,1) LOOP
		SELECT COALESCE(vc.latest_update, CURRENT_DATE),
			COALESCE(v.vocabulary_version, v.vocabulary_id || ' ' || TO_CHAR(CURRENT_DATE, 'YYYYMMDD'))
		INTO pLatestUpdate,
			pVocabVersion
		FROM vocabulary v
		JOIN vocabulary_conversion vc ON vc.vocabulary_id_v5 = v.vocabulary_id
		WHERE v.vocabulary_id = pVocabs[i];

		IF NOT FOUND THEN
			RAISE EXCEPTION 'Vocabulary with id=% not found', pVocabs[i];
		END IF;

		pGeneratedStmt:=pGeneratedStmt||FORMAT($$
			PERFORM VOCABULARY_PACK.SetLatestUpdate(
			pVocabularyName=>%1$L,
			pVocabularyDate=>%4$L,
			pVocabularyVersion=>%5$L,
			pVocabularyDevSchema=>%2$L,
			pAppendVocabulary=>%3$L
		);
		$$,pVocabs[i],pSchemaName,(i>1),pLatestUpdate,pVocabVersion);
	END LOOP;

	pGeneratedStmt:=pGeneratedStmt||'END $_$;';

	EXECUTE pGeneratedStmt;
END $LATESTUPDATE$;

--2. Truncate all working tables
TRUNCATE TABLE concept_stage;
TRUNCATE TABLE concept_relationship_stage;
TRUNCATE TABLE concept_synonym_stage;
TRUNCATE TABLE pack_content_stage;
TRUNCATE TABLE drug_strength_stage;

--3. Load full list of concepts
INSERT INTO concept_stage
SELECT c.*
FROM concept c
JOIN vocabulary v ON v.vocabulary_id=c.vocabulary_id
WHERE v.latest_update IS NOT NULL; --load only updatable vocabularies

--4. Load full list of relationships
INSERT INTO concept_relationship_stage (
	concept_code_1,
	concept_code_2,
	vocabulary_id_1,
	vocabulary_id_2,
	relationship_id,
	valid_start_date,
	valid_end_date,
	invalid_reason
	)
SELECT DISTINCT
  c1.concept_code,
	c2.concept_code,
	c1.vocabulary_id,
	c2.vocabulary_id,
	cr.relationship_id,
	cr.valid_start_date,
	cr.valid_end_date,
	cr.invalid_reason
FROM concept_relationship cr
JOIN concept c1 ON c1.concept_id = cr.concept_id_1
JOIN vocabulary v1 ON v1.vocabulary_id = c1.vocabulary_id
JOIN concept c2 ON c2.concept_id = cr.concept_id_2
JOIN vocabulary v2 ON v2.vocabulary_id = c2.vocabulary_id
WHERE cr.invalid_reason IS NULL
	--load only updatable vocabularies 
	AND COALESCE(v1.latest_update, v2.latest_update) IS NOT NULL
	/*
	put only 'direct' versions of relationships
	this will protect us from cases where some function, for example, DeleteAmbiguousMapsTo, will update the old 'Maps to' relationship, and its reverse version will remain unaffected
	*/
	--AND cr.relationship_id = devv5.GetPrimaryRelationshipID(cr.relationship_id);
	AND (
			CASE 
				WHEN cr.invalid_reason IS NULL
					AND COALESCE(v1.latest_update, v2.latest_update) IS NOT NULL
					THEN devv5.GetPrimaryRelationshipID(cr.relationship_id)
				END
			) = cr.relationship_id;

--5. Load full list of synonyms
INSERT INTO concept_synonym_stage
SELECT cs.concept_id,
	cs.concept_synonym_name,
	c.concept_code,
	c.vocabulary_id,
	cs.language_concept_id
FROM concept_synonym cs
JOIN concept c ON c.concept_id = cs.concept_id
JOIN vocabulary v ON v.vocabulary_id=c.vocabulary_id
WHERE v.latest_update IS NOT NULL;

ANALYZE concept_stage;
ANALYZE concept_relationship_stage;
ANALYZE drug_strength_stage;

--8. Manual concepts
DO $_$
BEGIN
	PERFORM VOCABULARY_PACK.ProcessManualConcepts();
END $_$;

--9. Manual synonyms
DO $_$
BEGIN
	PERFORM VOCABULARY_PACK.ProcessManualSynonyms();
END $_$;

--10. Manual mappings
DO $_$
BEGIN
	PERFORM VOCABULARY_PACK.ProcessManualRelationships();
END $_$;

--11. Working with replacement mappings
DO $_$
BEGIN
	PERFORM VOCABULARY_PACK.CheckReplacementMappings();
END $_$;

--12. Add mapping (Maps to) from deprecated to fresh concepts
DO $_$
BEGIN
	PERFORM VOCABULARY_PACK.AddFreshMAPSTO();
END $_$;

--13. Add mapping (Maps to value) from deprecated to fresh concepts
DO $_$
BEGIN
	PERFORM VOCABULARY_PACK.AddFreshMapsToValue();
END $_$;

--14. Deprecate 'Maps to' mappings to deprecated and upgraded concepts
DO $_$
BEGIN
	PERFORM VOCABULARY_PACK.DeprecateWrongMAPSTO();
END $_$;

--15. Delete ambiguous 'Maps to' mappings
DO $_$
BEGIN
	PERFORM VOCABULARY_PACK.DeleteAmbiguousMAPSTO();
END $_$;

-- At the end, the three tables concept_stage, concept_relationship_stage and concept_synonym_stage should be ready to be fed into the generic_update.sql script

--checks BEFORE generic
SELECT qa_tests.check_stage_tables();
  
--bug fix
DELETE FROM concept_stage
WHERE concept_id = 36402927 ;

--generic update
SELECT devv5.GenericUpdate();

--checks AFTER generic
SELECT qa_tests.get_checks();
SELECT qa_tests.get_changes_concept_mapping();
SELECT qa_tests.get_domain_changes('dev_onco');
SELECT qa_tests.get_new_vocabulary_dependencies();
SELECT qa_tests.get_newly_concepts();	
SELECT qa_tests.get_newly_concepts_standard_concept_status();
SELECT qa_tests.get_standard_concept_changes();
SELECT qa_tests.get_summary('concept','devv5');
