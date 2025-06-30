-------------------------
--DELETE WRONG MAPPINGS--
-------------------------
--onco_wg_proper_mapping_table
delete from dev_onco.onco_wg_proper_mapping_table
where concept_id IN (
  4003184,4013824,4013824,4012811,4012811,
  3018971,3052487,3052487,3048665,3048665,
  3001208,3046802,3035299,36303310,36716849,
  36716849,2100741,2100818,2100692,2100693,
  2100795,2100652,2100653,2100624,2100932,
  2101062,2101594,2101596,2101593,2101592,
  2111226,2111224,2111225,2213285,42514447,
  42514417,4086004,3040862,21493735,21493734,
  4065512,4065512,3038857,3047564,3047364,
  44498759) ; --42
  
--onco_wg_list_of_items_for_mapping_or_curation_mapped
delete from dev_onco.onco_wg_list_of_items_for_mapping_or_curation_mapped
where concept_id IN (
  4003184,4013824,4013824,4012811,4012811,
  3018971,3052487,3052487,3048665,3048665,
  3001208,3046802,3035299,36303310,36716849,
  36716849,2100741,2100818,2100692,2100693,
  2100795,2100652,2100653,2100624,2100932,
  2101062,2101594,2101596,2101593,2101592,
  2111226,2111224,2111225,2213285,42514447,
  42514417,4086004,3040862,21493735,21493734,
  4065512,4065512,3038857,3047564,3047364,
  44498759) ; --42
  
--onco_wg_proper_compact_unnested_mapping_maps_to_table
delete from dev_onco.onco_wg_proper_compact_unnested_mapping_maps_to_table
where concept_id IN (
  4003184,4013824,4013824,4012811,4012811,
  3018971,3052487,3052487,3048665,3048665,
  3001208,3046802,3035299,36303310,36716849,
  36716849,2100741,2100818,2100692,2100693,
  2100795,2100652,2100653,2100624,2100932,
  2101062,2101594,2101596,2101593,2101592,
  2111226,2111224,2111225,2213285,42514447,
  42514417,4086004,3040862,21493735,21493734,
  4065512,4065512,3038857,3047564,3047364,
  44498759) ; --42
  
--delete concepts that already exists with correct relationship_id = 'Histolofy of ICDO3'
--onco_wg_proper_mapping_table
delete from dev_onco.onco_wg_proper_mapping_table
where concept_id in (36402259,36402342,36402891,36402913,36402914,36402945,36402946,36402960,36402977,36402989)
  and target_concept_id IN (42514126,42514164,42514192,42514243,42514264,42514302,42514305,42514307,42514374,37167742) ; --10
  
--onco_wg_list_of_items_for_mapping_or_curation_mapped
delete from dev_onco.onco_wg_list_of_items_for_mapping_or_curation_mapped
where concept_id in (36402259,36402342,36402891,36402913,36402914,36402945,36402946,36402960,36402977,36402989)
  and target_concept_id IN (42514126,42514164,42514192,42514243,42514264,42514302,42514305,42514307,42514374,37167742) ; --10
  
--onco_wg_proper_compact_unnested_mapping_maps_to_table
delete from dev_onco.onco_wg_proper_compact_unnested_mapping_maps_to_table
where concept_id in (36402259,36402342,36402891,36402913,36402914,36402945,36402946,36402960,36402977,36402989)
  and target_concept_id IN (42514126,42514164,42514192,42514243,42514264,42514302,42514305,42514307,42514374,37167742) ; --10

--delete LOINC procedures   
DELETE FROM dev_onco.onco_wg_proper_mapping_table
WHERE concept_id IN (
--Finding 1
  3018971,36303310,
--Finding 2  
  3046802,3035299,3040862,3038857,3047564,3047364,
--Finding 3  
  3052487,3048665,
--Finding 4  
  3001459,3019702,3021985,3029091,3034952,
--Finding 5 
  21493734,21493735,21493736,3051506
) ; --9

DELETE FROM dev_onco.onco_wg_list_of_items_for_mapping_or_curation_mapped
WHERE concept_id IN (
--Finding 1
  3018971,36303310,
--Finding 2  
  3046802,3035299,3040862,3038857,3047564,3047364,
--Finding 3  
  3052487,3048665,
--Finding 4  
  3001459,3019702,3021985,3029091,3034952,
--Finding 5 
  21493734,21493735,21493736,3051506
) ; --9

DELETE FROM dev_onco.onco_wg_proper_compact_unnested_mapping_maps_to_table
WHERE concept_id IN (
--Finding 1
  3018971,36303310,
--Finding 2  
  3046802,3035299,3040862,3038857,3047564,3047364,
--Finding 3  
  3052487,3048665,
--Finding 4  
  3001459,3019702,3021985,3029091,3034952,
--Finding 5 
  21493734,21493735,21493736,3051506
) ; --9

--remove duplicates from onco_wg_proper_mapping_table
DELETE
FROM dev_onco.onco_wg_proper_mapping_table
WHERE CTID NOT IN (
	SELECT MIN(CTID)
  FROM dev_onco.onco_wg_proper_mapping_table
	GROUP BY concept_id,relationship_id,target_concept_id) ; --0
	
--remove duplicates from onco_wg_list_of_items_for_mapping_or_curation_mapped
DELETE
FROM dev_onco.onco_wg_list_of_items_for_mapping_or_curation_mapped 
WHERE CTID NOT IN (
	SELECT MIN(CTID)
  FROM dev_onco.onco_wg_list_of_items_for_mapping_or_curation_mapped
	GROUP BY concept_id,to_value,target_concept_id); --0

--remove duplicates from onco_wg_proper_compact_unnested_mapping_maps_to_table
DELETE
FROM dev_onco.onco_wg_proper_compact_unnested_mapping_maps_to_table 
WHERE CTID NOT IN (
	SELECT MIN(CTID)
  FROM dev_onco.onco_wg_proper_compact_unnested_mapping_maps_to_table
	GROUP BY concept_id,relationship_id,target_concept_id); --77
	
------------------------------
--INPUTS OF UPDATED MAPPINGS--
------------------------------
--1. insert into onco_wg_proper_mapping_table
INSERT INTO onco_wg_proper_mapping_table
            (concept_id,
             source_vocabulary_id,
             eav_id_array,
             eav_value_array,
             noncancer_relative_flag,
             post_coordination_control_flag,
             source_code,
             source_code_description,
             relationship_id,
             relationship_predicate_id,
             logic_group,
             mapping_tool,
             mapping_source,
             target_concept_id,
             target_concept_code,
             target_concept_name,
             target_concept_calass_id,
             target_standard_concept,
             target_invalid_reason,
             target_domain_id,
             target_vocabulary_id,
             vocabulary_version) 
SELECT DISTINCT a.concept_id,
                a.source_vocabulary_id,
                a.eav_id_array,
                a.eav_value_array,
                a.noncancer_relative_flag,
                a.post_coordination_control_flag,
                a.source_code,
                a.source_code_description,
                b.relationship_id,
                b.predicate_id,--relationship_predicate_id
                a.logic_group,
                a.mapping_tool,
                a.mapping_source,
                b.target_concept_id,
                b.target_concept_code,
                b.target_concept_name,
                b.target_concept_class_id,
                b.target_standard_concept,
                b.target_invalid_reason,
                b.target_domain_id,
                b.target_vocabulary_id,
                array['v5.0 20-MAY-25']
FROM onco_wg_proper_mapping_table a
JOIN nemesis_mapping_0525 b
  ON a.concept_id = b.source_concept_id; --515

INSERT INTO onco_wg_proper_mapping_table
            (concept_id,
             source_vocabulary_id,
             eav_id_array,
             eav_value_array,
             noncancer_relative_flag,
             post_coordination_control_flag,
             source_code,
             source_code_description,
             relationship_id,
             relationship_predicate_id,
             logic_group,
             mapping_tool,
             mapping_source,
             target_concept_id,
             target_concept_code,
             target_concept_name,
             target_concept_calass_id,
             target_standard_concept,
             target_invalid_reason,
             target_domain_id,
             target_vocabulary_id,
             vocabulary_version) 
SELECT DISTINCT c1.concept_id,
                c1.vocabulary_id,
                array[0],
                array[0],
                false,
                false,
                c1.concept_code,
                c1.concept_name,
                a.relationship_id,
                a.predicate_id,--relationship_predicate_id
                0,
                null,
                null,
                c2.concept_id,
                c2.concept_code,
                c2.concept_name,
                c2.concept_class_id,
                c2.standard_concept,
                c2.invalid_reason,
                c2.domain_id,
                c2.vocabulary_id,
                array['v5.0 20-MAY-25']
FROM nemesis_mapping_0525 a
JOIN concept c1
  ON source_concept_id = c1.concept_id
join concept c2
  ON target_concept_id = c2.concept_id
WHERE NOT EXISTS (SELECT 1 FROM onco_wg_proper_mapping_table a
                  WHERE (c1.concept_id,c2.concept_id) = (a.concept_id,a.target_concept_id)) ; --56
     
    
--remove old mappings
DELETE FROM onco_wg_proper_mapping_table
WHERE  concept_id IN (SELECT concept_id
                      FROM   onco_wg_proper_mapping_table
                      WHERE  vocabulary_version = '{"v5.0 20-MAY-25"}')
  AND vocabulary_version != '{"v5.0 20-MAY-25"}'; --518
  
--remove wrong mappings
DELETE FROM dev_onco.onco_wg_proper_mapping_table
WHERE (concept_id, target_concept_id) IN (
    (4028881, 1244536),
    (4028881, 1634752),
    (4118499, 1633777),
    (4119001, 1635090),
    (4133828, 1242311),
    (4133828, 1634371),
    (4133297, 1242311),
    (4133297, 1634752),
    (4133298, 1242311),
    (4133298, 1633749),
    (4121182, 1634643),
    (4175704, 1633801),
    (4081832, 1634484),
    (4128454, 1633565),
    (4128455, 1635611),
    (4130411, 1634494),
    (4127501, 1634123),
    (4128450, 1634028),
    (4128456, 1635855),
    (4129914, 1634411),
    (4128457, 1634150),
    (4129915, 1633439),
    (4130412, 1633748),
    (4130414, 1633742),
    (4129126, 1635039),
    (4129916, 1634320),
    (4129917, 1634689),
    (4127611, 1633781),
    (4129127, 1634514),
    (4129918, 1633758),
    (4130416, 1633765),
    (4129919, 1634088),
    (4127612, 1634192),
    (4129920, 1634291),
    (4129129, 1635368)
); --29
   
--2. insert into onco_wg_list_of_items_for_mapping_or_curation_mapped
 INSERT INTO onco_wg_list_of_items_for_mapping_or_curation_mapped
            (concept_id,
             source_code,
             source_code_description,
             mappings_arr,
             concept_class_id,
             mapping_path,
             mapping_exists,
             source_vocabulary_id,
             critique,
             status,
             duedate,
             todo_priority,
             effort,
             vocabularyversion,
             vocabularycompatibility,
             predefinedtarget_complience,
             partner_cnt,
             avg_cnt,
             to_value,
             concept_category,
             logic_group,
             confidence,
             mapper,
             reviewer,
             relationship_predicate_id,
             mappig_tool,
             postcoordination_control,
             noncancer_relative,
             mapping_source,
             target_concept_id,
             target_concept_code,
             target_concept_name,
             target_concept_class_id,
             target_standard_concept,
             target_invalid_reason,
             target_domain_id,
             target_vocabulary_id,
             eav_id_array,
             eav_value_array)
SELECT DISTINCT concept_id,
                source_code,
                source_code_description,
                mappings_arr,
                concept_class_id,
                mapping_path,
                mapping_exists,
                a.source_vocabulary_id,
                critique,
                status,
                duedate,
                todo_priority,
                effort,
                array['v5.0 20-MAY-25'] AS vocabularyversion,
                vocabularycompatibility,
                predefinedtarget_complience,
                partner_cnt,
                avg_cnt,
                b.relationship_id AS to_value,
                concept_category,
                logic_group,
                b.confidence::float8,
                'SciForce' AS mapper, --tag for filtration
                reviewer,
                CASE
                  WHEN predicate_id IN ( 'skos:closeMatch',
                                         'skos:exactMatchValue',
                                         'skos:exactMatch' ) 
                  THEN 'eq'
                  WHEN predicate_id = 'skos:broadMatch' 
                  THEN 'up'
                  ELSE NULL
                END AS relationship_predicate_id,
                mappig_tool,
                postcoordination_control,
                noncancer_relative,
                mapping_source,
                b.target_concept_id,
                b.target_concept_code,
                b.target_concept_name,
                b.target_concept_class_id,
                b.target_standard_concept,
                b.target_invalid_reason,
                b.target_domain_id,
                b.target_vocabulary_id,
                eav_id_array,
                eav_value_array
FROM onco_wg_list_of_items_for_mapping_or_curation_mapped a
JOIN nemesis_mapping_0525 b
  ON a.concept_id = b.source_concept_id; --540
         
--remove old mappings
DELETE FROM onco_wg_list_of_items_for_mapping_or_curation_mapped
WHERE  concept_id IN (SELECT concept_id
                      FROM onco_wg_list_of_items_for_mapping_or_curation_mapped
                      WHERE  mapper = 'SciForce')
  AND mapper != 'SciForce'; --518
  
--remove wrong mappings
DELETE FROM dev_onco.onco_wg_list_of_items_for_mapping_or_curation_mapped
WHERE (concept_id, target_concept_id) IN (
    (4028881, 1244536),
    (4028881, 1634752),
    (4118499, 1633777),
    (4119001, 1635090),
    (4133828, 1242311),
    (4133828, 1634371),
    (4133297, 1242311),
    (4133297, 1634752),
    (4133298, 1242311),
    (4133298, 1633749),
    (4121182, 1634643),
    (4175704, 1633801),
    (4081832, 1634484),
    (4128454, 1633565),
    (4128455, 1635611),
    (4130411, 1634494),
    (4127501, 1634123),
    (4128450, 1634028),
    (4128456, 1635855),
    (4129914, 1634411),
    (4128457, 1634150),
    (4129915, 1633439),
    (4130412, 1633748),
    (4130414, 1633742),
    (4129126, 1635039),
    (4129916, 1634320),
    (4129917, 1634689),
    (4127611, 1633781),
    (4129127, 1634514),
    (4129918, 1633758),
    (4130416, 1633765),
    (4129919, 1634088),
    (4127612, 1634192),
    (4129920, 1634291),
    (4129129, 1635368)
); --29

--3. insert into onco_wg_proper_compact_unnested_mapping_maps_to_table
--add flag column to filter and delete old mappings on further steps
ALTER TABLE onco_wg_proper_compact_unnested_mapping_maps_to_table
  ADD COLUMN flag VARCHAR;

--insert into onco_wg_proper_compact_unnested_mapping_maps_to_table
INSERT INTO onco_wg_proper_compact_unnested_mapping_maps_to_table
            (concept_id,
             eav_counterpart,
             relationship_id,
             target_concept_id,
             target_domain_id,
             flag)
SELECT DISTINCT a.concept_id,
                a.eav_counterpart,
                b.relationship_id,
                b.target_concept_id,
                b.target_domain_id,
                '1' AS flag
FROM onco_wg_proper_compact_unnested_mapping_maps_to_table a
JOIN nemesis_mapping_0525 b
  ON a.concept_id = b.source_concept_id; --476
  
--remove old mappings
DELETE FROM onco_wg_proper_compact_unnested_mapping_maps_to_table
WHERE concept_id IN (SELECT concept_id
                      FROM onco_wg_proper_compact_unnested_mapping_maps_to_table
                      WHERE  flag = '1')
  AND flag IS NULL; --510
  
--remove wrong mappings
DELETE FROM dev_onco.onco_wg_proper_compact_unnested_mapping_maps_to_table
WHERE (concept_id, target_concept_id) IN (
    (4028881, 1244536),
    (4028881, 1634752),
    (4118499, 1633777),
    (4119001, 1635090),
    (4133828, 1242311),
    (4133828, 1634371),
    (4133297, 1242311),
    (4133297, 1634752),
    (4133298, 1242311),
    (4133298, 1633749),
    (4121182, 1634643),
    (4175704, 1633801),
    (4081832, 1634484),
    (4128454, 1633565),
    (4128455, 1635611),
    (4130411, 1634494),
    (4127501, 1634123),
    (4128450, 1634028),
    (4128456, 1635855),
    (4129914, 1634411),
    (4128457, 1634150),
    (4129915, 1633439),
    (4130412, 1633748),
    (4130414, 1633742),
    (4129126, 1635039),
    (4129916, 1634320),
    (4129917, 1634689),
    (4127611, 1633781),
    (4129127, 1634514),
    (4129918, 1633758),
    (4130416, 1633765),
    (4129919, 1634088),
    (4127612, 1634192),
    (4129920, 1634291),
    (4129129, 1635368)
);--29
  
--drop flag column
ALTER TABLE onco_wg_proper_compact_unnested_mapping_maps_to_table
  DROP COLUMN flag;

--4. insert into onco_wg_proper_compact_unnested_mapping_maps_to_value_table
--add flag column to filter and delete old mappings on further steps
ALTER TABLE onco_wg_proper_compact_unnested_mapping_maps_to_value_table
ADD COLUMN flag VARCHAR;

--insert into onco_wg_proper_compact_unnested_mapping_maps_to_value_table
INSERT INTO onco_wg_proper_compact_unnested_mapping_maps_to_value_table
            (concept_id,
             eav_counterpart,
             relationship_id,
             target_concept_id,
             target_domain_id,
             flag)
SELECT DISTINCT a.concept_id,
                a.eav_counterpart,
                b.relationship_id,
                b.target_concept_id,
                b.target_domain_id,
                '1' AS flag
FROM onco_wg_proper_compact_unnested_mapping_maps_to_value_table a
JOIN nemesis_mapping_0525 b
  ON a.concept_id = b.source_concept_id; --17
  
--remove old mappings
DELETE FROM onco_wg_proper_compact_unnested_mapping_maps_to_value_table
WHERE  concept_id IN (SELECT concept_id
                      FROM onco_wg_proper_compact_unnested_mapping_maps_to_value_table
                      WHERE  flag = '1')
  AND flag IS NULL; --8
  
--delete flag column
ALTER TABLE onco_wg_proper_compact_unnested_mapping_maps_to_value_table
DROP COLUMN flag;
