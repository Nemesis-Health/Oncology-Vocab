WITH new_map AS
(SELECT a.concept_code,
       a.concept_name,
       STRING_AGG(r.relationship_id,'-' ORDER BY b.concept_code) AS relationship_agg,
       STRING_AGG(b.concept_code,'-' ORDER BY b.concept_code) AS code_agg,
       STRING_AGG(b.concept_name,'-/-' ORDER BY b.concept_code) AS name_agg
FROM concept a
  JOIN concept_relationship r
    ON a.concept_id = concept_id_1
   AND r.relationship_id IN ('Maps to', 'Maps to value') --set required relationships
   AND r.invalid_reason IS NULL
  JOIN concept b ON b.concept_id = concept_id_2
WHERE a.vocabulary_id in ( 'SNOMED', 'LOINC', 'NAACCR', 'ICDO3', 'Cancer Modifier', 'HCPCS') --set required vocabularies
AND   a.invalid_reason IS NULL
GROUP BY a.concept_code,
         a.concept_name),
         old_map AS (SELECT a.concept_code,
                            a.concept_name,
                            STRING_AGG(r.relationship_id,'-' ORDER BY b.concept_code) AS relationship_agg,
                            STRING_AGG(b.concept_code,'-' ORDER BY b.concept_code) AS code_agg,
                            STRING_AGG(b.concept_name,'-/-' ORDER BY b.concept_code) AS name_agg
                     FROM devv5.concept a
                       JOIN devv5.concept_relationship r
                         ON a.concept_id = concept_id_1
                        AND r.relationship_id IN ('Maps to',  'Maps to value')  --set required relationships
                        AND r.invalid_reason IS NULL
                       JOIN devv5.concept b ON b.concept_id = concept_id_2
                     WHERE a.vocabulary_id in ( 'SNOMED', 'LOINC', 'NAACCR', 'ICDO3', 'Cancer Modifier', 'HCPCS') --set required vocabularies
                     AND   a.invalid_reason IS NULL
                     GROUP BY a.concept_code,
                              a.concept_name)
SELECT a.concept_code AS source_code,
       a.concept_name AS source_name,
       a.relationship_agg AS old_relat_agg,
       a.code_agg AS old_code_agg,
       a.name_agg AS old_name_agg,
       b.relationship_agg AS new_relat_agg,
       b.code_agg AS new_code_agg,
       b.name_agg AS new_name_agg
FROM old_map a
  JOIN new_map b
    ON a.concept_code = b.concept_code
   AND (a.code_agg != b.code_agg
    OR a.relationship_agg != b.relationship_agg)
ORDER BY a.concept_code; 
