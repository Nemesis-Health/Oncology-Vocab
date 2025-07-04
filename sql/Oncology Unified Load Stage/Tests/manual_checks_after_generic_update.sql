--lookup of concepts that have mappings to OMOP Genomic
SELECT DISTINCT 
  c1.concept_id, c1.concept_name, c1.vocabulary_id, c1.standard_concept,
  relationship_id, cr.invalid_reason,
  c2.concept_id, c2.concept_name, c2.vocabulary_id, c2.standard_concept
FROM concept_relationship cr
  JOIN concept c1
    ON c1.concept_id = cr.concept_id_1
  JOIN concept c2
    ON cr.concept_id_2 = c2.concept_id
--only those that present in concept_manual
WHERE c1.concept_code IN (SELECT concept_code_1 FROM concept_relationship_manual)
  AND c1.vocabulary_id IN ('Cancer Modifier', 'SNOMED', 'ICDO3', 'NAACCR', 'CPT4', 'HemOnc', 'LOINC', 'HCPCS')
--those that have mapping to OMOP Genomic
  AND c1.concept_id IN (
    SELECT concept_id_1 FROM concept_relationship cr
    JOIN concept c
      ON cr.concept_id_2 = c.concept_id
    WHERE c.vocabulary_id = 'OMOP Genomic')
  AND relationship_id = 'Maps to'
ORDER BY c1.concept_name, c2.vocabulary_id DESC
;

--lookup of concepts related to Metastasis
SELECT 
  c1.concept_id, c1.concept_name, c1.vocabulary_id, c1.standard_concept,
  relationship_id, cr.invalid_reason,
  c2.concept_id, c2.concept_name, c2.vocabulary_id, c2.standard_concept
FROM concept_relationship cr
  JOIN concept c1
    ON c1.concept_id = cr.concept_id_1
  JOIN concept c2
    ON cr.concept_id_2 = c2.concept_id
--only those that present in concept_manual
WHERE c1.concept_code IN (SELECT concept_code_1 FROM concept_relationship_manual)
  AND concept_id_1 IN (
    SELECT concept_id_1
    FROM concept_relationship cr
    WHERE concept_id_2 = 36769180 )  --Metastasis
  AND relationship_id IN ('Maps to', 'Maps to value')
;

--lookup of concepts that have BOTH Metastasis and Metastasis to [organ].
--If concept has mappings to Condition + Metastasis, Metastasis to [organ] has to have concept_relationship.invalid_reason = 'D'.
--Both mappings to Metastasis and Metastasis to [organ] could not be valid.
WITH multiple_mets AS (
SELECT 
  c1.concept_id,
  ARRAY_AGG(c2.concept_name ORDER BY c2.concept_name) as arr -- Aggregates concept names into an array
FROM concept_relationship cr
JOIN concept c1 
  ON c1.concept_id = cr.concept_id_1
JOIN concept c2 
  ON cr.concept_id_2 = c2.concept_id
WHERE cr.relationship_id = 'Maps to'
  AND c2.standard_concept = 'S' 
  AND c1.concept_id IN (
      SELECT concept_id_1
      FROM concept_relationship
      WHERE concept_id_2 = 36769180 --Metastasis
    )
GROUP BY c1.concept_id
HAVING CARDINALITY(ARRAY_AGG(c2.concept_name)) > 1
   AND 'Metastasis' = ANY(ARRAY_AGG(c2.concept_name))
   AND EXISTS (
        SELECT 1
        FROM UNNEST(ARRAY_AGG(c2.concept_name)) AS name_in_array
        WHERE name_in_array LIKE 'Metastasis to%'
    ))
       
SELECT
  c1.concept_id, c1.concept_name, c1.vocabulary_id, c1.standard_concept,
  relationship_id, cr.invalid_reason,
  c2.concept_id, c2.concept_name, c2.vocabulary_id, c2.standard_concept
FROM concept_relationship cr
  JOIN concept c1
    ON c1.concept_id = cr.concept_id_1
  JOIN concept c2
    ON cr.concept_id_2 = c2.concept_id
WHERE relationship_id = 'Maps to' AND c2.standard_concept = 'S'
  --have both Metastasis & Metastasis to concepts
  AND c1.concept_id IN (select concept_id from multiple_mets)
  --filter those that we affected
  AND c1.concept_code IN
  (SELECT concept_code_1 FROM concept_relationship_manual)
; 

--check for entities that are present in CONCEPT, but do not have mappings in CONCEPT_RELATIONSHIP (should return null)
SELECT *
FROM concept c
--only those that present in concept_manual
WHERE EXISTS (
  SELECT 1 FROM concept_manual cm WHERE c.concept_code = cm.concept_code)
--do not exists in concept_relationship
AND NOT EXISTS (SELECT 1 FROM concept_relationship cr WHERE c.concept_id  != cr.concept_id_1) 
;

--check where concept has 'Maps to' to non-S entity (should return null)
SELECT 
  c1.concept_id, c1.concept_name, c1.vocabulary_id, c1.standard_concept,
  relationship_id, cr.invalid_reason,
  c2.concept_id, c2.concept_name, c2.vocabulary_id, c2.standard_concept
FROM concept_relationship cr
  JOIN concept c1
    ON c1.concept_id = cr.concept_id_1
  JOIN concept c2
    ON cr.concept_id_2 = c2.concept_id
--only those that present in concept_relationship_manual
WHERE (c1.concept_code,c2.concept_code) IN
  (SELECT concept_code_1,concept_code_2 FROM concept_relationship_manual)
  AND relationship_id = 'Maps to' AND c2.standard_concept != 'S' 
;

-- concepts that have BOTH ACTIVE 'Maps to' and 'Is a' relationships (should return null)
WITH both_rels AS (
  SELECT cr.concept_id_1,
         cr.concept_id_2
  FROM concept_relationship cr
  WHERE cr.relationship_id IN ('Maps to', 'Is a')
    AND (cr.invalid_reason IS NULL OR cr.invalid_reason = '') --comment to see BOTH Deprecated and Active one 
  GROUP BY cr.concept_id_1, cr.concept_id_2
  HAVING COUNT(DISTINCT cr.relationship_id) = 2 -- Ensures both relationship types are present for the triplet
)

SELECT DISTINCT 
  c1.concept_id, c1.concept_name, c1.vocabulary_id, c1.standard_concept,
  relationship_id, cr.invalid_reason,
  c2.concept_id, c2.concept_name, c2.vocabulary_id, c2.standard_concept
FROM concept_relationship cr
JOIN concept c1 
  ON c1.concept_id = cr.concept_id_1
JOIN concept c2 
  ON cr.concept_id_2 = c2.concept_id
INNER JOIN concept_manual cm 
  ON c1.concept_code = cm.concept_code
WHERE (cr.concept_id_1, cr.concept_id_2) IN (SELECT concept_id_1, concept_id_2 FROM both_rels)
  AND cr.relationship_id IN ('Maps to', 'Is a') 
;

--check for wrong valid dates in CONCEPT
SELECT * FROM concept
--only those that present in concept_manual
WHERE valid_end_date < valid_start_date
;

--check for wrong valid dates in CONCEPT_RELATIONSHIP
SELECT * FROM concept_relationship
--only those that present in concept_manual
WHERE valid_end_date < valid_start_date
;

--lookup of count of concept standardness in dev_onco 
SELECT 
  'dev_onco' as comment, 
  c1.standard_concept as standard_concept_1, 
  c2.standard_concept as standard_concept_2,
  count(*)
FROM dev_onco.concept_ancestor ca
JOIN dev_onco.concept c1
  ON ca.ancestor_concept_id = c1.concept_id
JOIN dev_onco.concept c2
  ON ca.descendant_concept_id = c2.concept_id
GROUP BY c1.standard_concept, c2.standard_concept ;

--lookup of count of concept standardness in devv5
SELECT 
  'devv5' as comment, c1.standard_concept as standard_concept_1, c2.standard_concept as standard_concept_2,
  count(*)
FROM devv5.concept_ancestor ca
JOIN devv5.concept c1
  ON ca.ancestor_concept_id = c1.concept_id
JOIN devv5.concept c2
  ON ca.descendant_concept_id = c2.concept_id
GROUP BY c1.standard_concept, c2.standard_concept ;
