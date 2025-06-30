------------------
--CONCEPT_MANUAL--
------------------
TRUNCATE concept_manual;
--insert into concept_manual all concepts that will change mapping. Do not add Morph Abnormality (these concepts do not change mapping, but build links to Conditions, so have to be omitted)
INSERT INTO concept_manual
            (concept_name,
             domain_id,
             vocabulary_id,
             concept_class_id,
             standard_concept,
             concept_code,
             valid_start_date,
             valid_end_date,
             invalid_reason)
SELECT DISTINCT c1.concept_name,
                c1.domain_id,
                c1.vocabulary_id,
                c1.concept_class_id,
                CASE
                  WHEN a.relationship_id IN ( 'Maps to', 'Maps to value' ) 
                  THEN NULL
                  ELSE 'S'
                END AS standard_concept,
                c1.concept_code,
                c1.valid_start_date,
                c1.valid_end_date,
                c1.invalid_reason 
FROM onco_wg_proper_mapping_table a
JOIN concept c1
  ON a.concept_id = c1.concept_id
JOIN concept c2
  ON a.target_concept_id = c2.concept_id 
WHERE c1.concept_class_id != 'Morph Abnormality'
  AND a.vocabulary_version = '{"v5.0 20-MAY-25"}'; --387

--insert into concept_manual Morph Abnormality that will change mappings
INSERT INTO concept_manual
            (concept_name,
             domain_id,
             vocabulary_id,
             concept_class_id,
             standard_concept,
             concept_code,
             valid_start_date,
             valid_end_date,
             invalid_reason)
SELECT DISTINCT c1.concept_name,
                c1.domain_id,
                c1.vocabulary_id,
                c1.concept_class_id,
                CASE
                  WHEN a.relationship_id IN ( 'Maps to', 'Maps to value' ) 
                  THEN NULL
                  ELSE 'S'
                END AS standard_concept,
                c1.concept_code,
                c1.valid_start_date,
                c1.valid_end_date,
                c1.invalid_reason 
FROM onco_wg_proper_mapping_table a
JOIN concept c1
  ON a.concept_id = c1.concept_id
JOIN concept c2
  ON a.target_concept_id = c2.concept_id 
WHERE c1.concept_class_id = 'Morph Abnormality'
  AND c2.concept_class_id = 'Morph Abnormality'
  AND vocabulary_version = '{"v5.0 20-MAY-25"}' ; --6

-------------------------------
--CONCEPT_RELATIONSHIP_MANUAL--
-------------------------------
TRUNCATE concept_relationship_manual;
--1. insert prevalence of concepts into concept_relationship_manual
INSERT INTO concept_relationship_manual
            (concept_code_1,
             concept_code_2,
             vocabulary_id_1,
             vocabulary_id_2,
             relationship_id,
             valid_start_date,
             valid_end_date,
             invalid_reason) 
SELECT DISTINCT c1.concept_code, 
                c2.concept_code,
                c1.vocabulary_id,
                c2.vocabulary_id,
                a.relationship_id,
                CURRENT_DATE AS valid_start_date,
                To_date('2099-12-31', 'yyyy-mm-dd') AS valid_end_date,
                NULL AS invalid_reason
FROM onco_wg_proper_mapping_table a
JOIN concept c1
  ON a.concept_id = c1.concept_id
JOIN concept c2
  ON a.target_concept_id = c2.concept_id 
WHERE c1.concept_class_id != 'Morph Abnormality'
  AND vocabulary_version = '{"v5.0 20-MAY-25"}'
; --440

--2. add mappings for deprecated Morph Abnormalities
INSERT INTO concept_relationship_manual
            (concept_code_1,
             concept_code_2,
             vocabulary_id_1,
             vocabulary_id_2,
             relationship_id,
             valid_start_date,
             valid_end_date,
             invalid_reason)
SELECT DISTINCT c1.concept_code, 
                c2.concept_code,
                c1.vocabulary_id,
                c2.vocabulary_id,
                a.relationship_id,
                CURRENT_DATE AS valid_start_date,
                To_date('2099-12-31', 'yyyy-mm-dd') AS valid_end_date,
                NULL AS invalid_reason
FROM onco_wg_proper_mapping_table a
JOIN concept c1
  ON a.concept_id = c1.concept_id
JOIN concept c2
  ON a.target_concept_id = c2.concept_id 
WHERE c1.concept_class_id = 'Morph Abnormality'
  AND c2.concept_class_id = 'Morph Abnormality'
  AND vocabulary_version = '{"v5.0 20-MAY-25"}'
; --6

--3. deprecate mapping: from connective tissues to general entities
INSERT INTO concept_relationship_manual (
  concept_code_1,
  concept_code_2,
  vocabulary_id_1,
  vocabulary_id_2,
  relationship_id,
  valid_start_date,
  valid_end_date,
  invalid_reason)
SELECT 
  c1.concept_code,
  c2.concept_code,
  c1.vocabulary_id,
  c2.vocabulary_id,
  cr.relationship_id,
  cr.valid_start_date,
  CURRENT_DATE,
  'D' 
FROM concept_relationship cr
JOIN concept c1
  ON cr.concept_id_1 = c1.concept_id
JOIN concept c2
  ON cr.concept_id_2 = c2.concept_id
WHERE c1.concept_id IN
 (SELECT concept_id FROM onco_wg_proper_mapping_table 
  WHERE source_code ~* 'C49.9'
    AND vocabulary_version = '{"v5.0 20-MAY-25"}') --Connective, Subcutaneous and other soft tissues, NOS
  AND relationship_id = 'Maps to'
  AND cr.invalid_reason IS NULL ; --5
  
--4. add hierarchy: 40487487 Ewing's sarcoma of soft tissue IS A 4100557	Peripheral neuroectodermal tumor
INSERT INTO concept_relationship_manual (
  concept_code_1,
  concept_code_2,
  vocabulary_id_1,
  vocabulary_id_2,
  relationship_id,
  valid_start_date,
  valid_end_date,
  invalid_reason )
SELECT 
  c1.concept_code,
  c2.concept_code,
  c1.vocabulary_id,
  c2.vocabulary_id,
  'Is a',
  CURRENT_DATE,
  TO_DATE('2099-12-31', 'YYYY-MM-DD'),
  NULL
FROM (SELECT * FROM concept WHERE concept_id = 40487487) c1,
  (SELECT * FROM concept WHERE concept_id = 4100557) c2 ; --1
  
--5. deprecate mapping: 44499739 Cholangiocarcinoma of extrahepatic bile duct MAPS TO 3655520 Perihilar cholangiocarcinoma
INSERT INTO concept_relationship_manual(
  concept_code_1,
  concept_code_2,
  vocabulary_id_1,
  vocabulary_id_2,
  relationship_id,
  valid_start_date,
  valid_end_date,
  invalid_reason) 
SELECT 
  c1.concept_code,
  c2.concept_code,
  c1.vocabulary_id,
  c2.vocabulary_id,
  relationship_id,
  cr.valid_start_date,
  CURRENT_DATE,
  'D'
FROM concept_relationship cr
  JOIN concept c1
    ON cr.concept_id_1 = c1.concept_id
  JOIN concept c2
    ON cr.concept_id_2 = c2.concept_id
where concept_id_1 = 44499739
  and concept_id_2 = 3655520; --1			
  
--6. remove Metasasis to concepts, if concept_relationship_manual already has general Metastasis instead
INSERT INTO concept_relationship_manual
            (concept_code_1,
             concept_code_2,
             vocabulary_id_1,
             vocabulary_id_2,
             relationship_id,
             valid_start_date,
             valid_end_date,
             invalid_reason)
         
WITH mets AS (
SELECT descendant_concept_id as mets_id FROM devv5.concept_ancestor ca
/*  JOIN concept c
    ON descendant_concept_id = c.concept_id */
WHERE ancestor_concept_id = 36769180
  AND descendant_concept_id NOT IN (36769664, --Circulating tumor cells
                                    36769243) --Distant spread to lymph node
  AND max_levels_of_separation != 0
  AND min_levels_of_separation != 0 
  ) 

SELECT
  c1.concept_code,
  c2.concept_code,
  c1.vocabulary_id,
  c2.vocabulary_id,
  cr.relationship_id,
  cr.valid_start_date,
  current_date,
  'D'
FROM concept_relationship cr
JOIN concept c1
  ON cr.concept_id_1 = c1.concept_id
JOIN concept c2
  ON cr.concept_id_2 = c2.concept_id
WHERE concept_id_2 IN
  (SELECT mets_id FROM mets)
  AND concept_id_1 IN
    (SELECT c.concept_id 
     FROM concept_relationship_manual crm
     JOIN concept c
       ON crm.concept_code_1 = c.concept_code
       AND crm.vocabulary_id_1 = c.vocabulary_id
     WHERE concept_code_2 = 'OMOP4998856' --Metastasis
     ) ; --3  		
  
--7. Maps to   
--7.1. Deprecate Maps to self
INSERT INTO concept_relationship_manual
            (concept_code_1,
             concept_code_2,
             vocabulary_id_1,
             vocabulary_id_2,
             relationship_id,
             valid_start_date,
             valid_end_date,
             invalid_reason)

SELECT 
  c1.concept_code,
  --c1.concept_name,
  c2.concept_code,
  --c2.concept_name,
  c1.vocabulary_id,
  c2.vocabulary_id,
  cr.relationship_id,
  --cr.invalid_reason,
  cr.valid_start_date,
  current_date,
  'D' 
FROM concept_relationship cr
JOIN concept c1
  ON cr.concept_id_1 = c1.concept_id
JOIN concept c2
  ON cr.concept_id_2 = c2.concept_id
WHERE relationship_id = 'Maps to'
  AND cr.invalid_reason IS NULL 
  AND c1.concept_id = c2.concept_id
  AND c1.concept_id IN (
    SELECT c1.concept_id FROM concept_relationship_manual crm
    JOIN concept c1
      ON crm.concept_code_1 = c1.concept_code
      AND crm.vocabulary_id_1 = c1.vocabulary_id
    WHERE relationship_id = 'Maps to')
--  AND c1.concept_id = 432851 --Metastatic malignant neoplasm
  ; --290

--7.2. Depracate Condition MAPS TO Condition if another Condition MAPS TO Condition exists in CRM
INSERT INTO concept_relationship_manual
            (concept_code_1,
             concept_code_2,
             vocabulary_id_1,
             vocabulary_id_2,
             relationship_id,
             valid_start_date,
             valid_end_date,
             invalid_reason)
             
WITH t1 AS (
    SELECT c1.concept_id as concept_id_1, c2.concept_id as concept_id_2 FROM concept_relationship_manual crm
    JOIN concept c1
      ON crm.concept_code_1 = c1.concept_code
      AND crm.vocabulary_id_1 = c1.vocabulary_id
    JOIN concept c2
      ON crm.concept_code_2 = c2.concept_code
      AND crm.vocabulary_id_2 = c2.vocabulary_id
    WHERE relationship_id = 'Maps to'
      AND c1.domain_id = 'Condition'
      AND c2.domain_id = 'Condition')
      
SELECT 
  c1.concept_code,
  --c1.concept_name,
  c2.concept_code,
  --c2.concept_name,
  c1.vocabulary_id,
  c2.vocabulary_id,
  cr.relationship_id,
  --cr.invalid_reason,
  cr.valid_start_date,
  current_date,
  'D'
FROM concept_relationship cr
JOIN concept c1
  ON cr.concept_id_1 = c1.concept_id
JOIN concept c2
  ON cr.concept_id_2 = c2.concept_id
WHERE cr.relationship_id = 'Maps to'
  AND cr.invalid_reason IS NULL 
  AND c1.domain_id = 'Condition'
  AND c2.domain_id = 'Condition'
  AND (c1.concept_id) IN (SELECT concept_id_1 FROM t1)
  AND c2.concept_id NOT IN (SELECT concept_id_2 FROM t1)
 ; --7

--7.3. Deprecate Invasive carcinoma of breast
INSERT INTO concept_relationship_manual
            (concept_code_1,
             concept_code_2,
             vocabulary_id_1,
             vocabulary_id_2,
             relationship_id,
             valid_start_date,
             valid_end_date,
             invalid_reason) 

SELECT 
  c1.concept_code,
  --c1.concept_name,
  c2.concept_code,
  --c2.concept_name,
  c1.vocabulary_id,
  c2.vocabulary_id,
  cr.relationship_id,
  --cr.invalid_reason,
  cr.valid_start_date,
  current_date,
  'D' 
FROM concept_relationship cr
JOIN concept c1
  ON cr.concept_id_1 = c1.concept_id
JOIN concept c2
  ON cr.concept_id_2 = c2.concept_id
WHERE relationship_id = 'Maps to'
AND c1.concept_code = 'G9074'
AND c2.concept_code = '713609000' --Invasive carcinoma of breast
  ; --1

--7.4. Depracate IS A if MAPS TO exists in CRM
INSERT INTO concept_relationship_manual
            (concept_code_1,
             concept_code_2,
             vocabulary_id_1,
             vocabulary_id_2,
             relationship_id,
             valid_start_date,
             valid_end_date,
             invalid_reason)
SELECT 
  c1.concept_code,
  --c1.concept_name,
  c2.concept_code,
  --c2.concept_name,
  c1.vocabulary_id,
  c2.vocabulary_id,
  cr.relationship_id,
  --cr.invalid_reason,
  cr.valid_start_date,
  current_date,
  'D'
FROM concept_relationship cr
JOIN concept c1
  ON cr.concept_id_1 = c1.concept_id
JOIN concept c2
  ON cr.concept_id_2 = c2.concept_id
WHERE cr.relationship_id = 'Is a'
  AND cr.invalid_reason IS NULL 
  AND (c1.concept_id,c2.concept_id) IN (
    SELECT c1.concept_id,c2.concept_id FROM concept_relationship_manual crm
    JOIN concept c1
      ON crm.concept_code_1 = c1.concept_code
      AND crm.vocabulary_id_1 = c1.vocabulary_id
    JOIN concept c2
      ON crm.concept_code_2 = c2.concept_code
      AND crm.vocabulary_id_2 = c2.vocabulary_id
    WHERE relationship_id = 'Maps to')
  AND NOT EXISTS (select 1 from concept_relationship_manual crm where (c1.concept_code,c2.concept_code,cr.relationship_id) = (crm.concept_code_1,crm.concept_code_2,crm.relationship_id))
 ; --11

--7.5. Deprecate 'X' Maps to Metastatic malignant neoplasm
INSERT INTO concept_relationship_manual
            (concept_code_1,
             concept_code_2,
             vocabulary_id_1,
             vocabulary_id_2,
             relationship_id,
             valid_start_date,
             valid_end_date,
             invalid_reason)
SELECT 
  c1.concept_code,
  --c1.concept_name,
  c2.concept_code,
  --c2.concept_name,
  c1.vocabulary_id,
  c2.vocabulary_id,
  cr.relationship_id,
  --cr.invalid_reason,
  cr.valid_start_date,
  current_date,
  'D' 
FROM concept_relationship cr
JOIN concept c1
  ON cr.concept_id_1 = c1.concept_id
JOIN concept c2
  ON cr.concept_id_2 = c2.concept_id
WHERE relationship_id = 'Maps to'
  AND cr.invalid_reason IS NULL 
  AND c1.concept_id != c2.concept_id
  AND c2.concept_id IN (
    SELECT c1.concept_id FROM concept_relationship_manual crm
    JOIN concept c1
      ON crm.concept_code_1 = c1.concept_code
      AND crm.vocabulary_id_1 = c1.vocabulary_id
    WHERE relationship_id = 'Maps to')
--  AND c2.concept_id = 432851 --Metastatic malignant neoplasm
  ; --524

--7.6. Add mapping from 'X' to replacement of Metastatic malignant neoplasm 
INSERT INTO concept_relationship_manual
            (concept_code_1,
             concept_code_2,
             vocabulary_id_1,
             vocabulary_id_2,
             relationship_id,
             valid_start_date,
             valid_end_date,
             invalid_reason)
SELECT 
  --c2.concept_name as old_mapping,
  c1.concept_code,
  --c1.concept_name,
  c3.concept_code,
  --c3.concept_name,
  c1.vocabulary_id,
  c3.vocabulary_id,
  crm.relationship_id,
  --cr.invalid_reason,
  current_date,
  to_date('2099-12-31', 'yyyy-mm-dd'),
  NULL 
FROM concept_relationship cr
JOIN concept c1
  ON cr.concept_id_1 = c1.concept_id
JOIN concept c2
  ON cr.concept_id_2 = c2.concept_id
--added mapp
JOIN concept_relationship_manual crm
  ON crm.concept_code_1 = c2.concept_code
  AND crm.vocabulary_id_1 = c2.vocabulary_id
--filter
join concept c3
  ON crm.concept_code_2 = c3.concept_code
  AND crm.vocabulary_id_2 = c3.vocabulary_id
WHERE cr.relationship_id = 'Maps to'
  AND cr.invalid_reason IS NULL 
  AND c1.concept_id != c2.concept_id
  AND crm.invalid_reason IS NULL
  --AND c1.concept_id = 43009650
  AND c2.concept_id IN (
    SELECT c1.concept_id FROM concept_relationship_manual crm
    JOIN concept c1
      ON crm.concept_code_1 = c1.concept_code
      AND crm.vocabulary_id_1 = c1.vocabulary_id
    WHERE relationship_id = 'Maps to')
--AND c2.concept_id = 432851 --Metastatic malignant neoplasm
--AND (concept_code_1 = '261985008' and concept_code_2 = '36769180')
  ; --710

--8. Is a
--8.1. Deprecate 'X' Is a Metastatic malignant neoplasm
INSERT INTO concept_relationship_manual
            (concept_code_1,
             concept_code_2,
             vocabulary_id_1,
             vocabulary_id_2,
             relationship_id,
             valid_start_date,
             valid_end_date,
             invalid_reason)
SELECT 
  c1.concept_code,
  --c1.concept_name,
  c2.concept_code,
  --c2.concept_name,
  c1.vocabulary_id,
  c2.vocabulary_id,
  cr.relationship_id,
  --cr.invalid_reason,
  cr.valid_start_date,
  current_date,
  'D' 
FROM concept_relationship cr
JOIN concept c1
  ON cr.concept_id_1 = c1.concept_id
JOIN concept c2
  ON cr.concept_id_2 = c2.concept_id
WHERE relationship_id = 'Is a'
  AND cr.invalid_reason IS NULL 
  AND c1.concept_id != c2.concept_id
  AND c2.concept_id IN (
    SELECT c1.concept_id FROM concept_relationship_manual crm
    JOIN concept c1
      ON crm.concept_code_1 = c1.concept_code
      AND crm.vocabulary_id_1 = c1.vocabulary_id
    WHERE relationship_id = 'Maps to')
--AND c2.concept_id = 432851 --Metastatic malignant neoplasm
--AND c1.concept_code = '91191000119108'
  ; --512

--8.2. Deprecate Metastatic malignant neoplasm Is a 'X' 
INSERT INTO concept_relationship_manual
            (concept_code_1,
             concept_code_2,
             vocabulary_id_1,
             vocabulary_id_2,
             relationship_id,
             valid_start_date,
             valid_end_date,
             invalid_reason)
SELECT 
  c1.concept_code,
  --c1.concept_name,
  c2.concept_code,
  --c2.concept_name,
  c1.vocabulary_id,
  c2.vocabulary_id,
  cr.relationship_id,
  --cr.invalid_reason,
  cr.valid_start_date,
  current_date,
  'D' 
FROM concept_relationship cr
JOIN concept c1
  ON cr.concept_id_1 = c1.concept_id
JOIN concept c2
  ON cr.concept_id_2 = c2.concept_id
WHERE relationship_id = 'Is a'
  AND cr.invalid_reason IS NULL 
  AND c1.concept_id != c2.concept_id
  AND c1.concept_id IN (
    SELECT c1.concept_id FROM concept_relationship_manual crm
    JOIN concept c1
      ON crm.concept_code_1 = c1.concept_code
      AND crm.vocabulary_id_1 = c1.vocabulary_id
    WHERE relationship_id = 'Maps to')
--AND c1.concept_id = 432851 --Metastatic malignant neoplasm
--AND c1.concept_code = '91191000119108'
  AND NOT EXISTS (select 1 from concept_relationship_manual crm where (c1.concept_code,c2.concept_code,relationship_id) = (concept_code_1,concept_code_2,relationship_id))
  ; --607

----------------
--STAGE TABLES--
----------------
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
