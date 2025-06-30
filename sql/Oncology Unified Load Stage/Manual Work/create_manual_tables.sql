DROP TABLE IF EXISTS onco_wg_list_of_items_for_mapping_or_curation;
DROP TABLE IF EXISTS onco_wg_list_of_items_for_mapping_or_curation_mapped;
DROP TABLE IF EXISTS onco_wg_proper_compact_unnested_mapping_maps_to_table;
DROP TABLE IF EXISTS onco_wg_proper_compact_unnested_mapping_maps_to_value_table;
DROP TABLE IF EXISTS onco_wg_proper_landing_table;
DROP TABLE IF EXISTS onco_wg_proper_mapping_table;
DROP TABLE IF EXISTS onco_wg_warning_concept_list;
DROP TABLE IF EXISTS onco_wg_wrong_concept_list;

CREATE TABLE onco_wg_list_of_items_for_mapping_or_curation
(
   ts                           date,
   concept_id                   integer,
   source_code                  varchar(50),
   source_code_description      varchar(255),
   mappings_arr                 text[],
   concept_class_id             text,
   mapping_path                 text,
   mapping_exists               boolean,
   source_vocabulary_id         varchar(20),
   critique                     text,
   status                       varchar(255),
   duedate                      date,
   todo_priority                integer,
   effort                       float8,
   vocabularycompativility      boolean,
   predefinedtarget_complience  boolean,
   partner_cnt                  bigint,
   avg_cnt                      numeric
);

CREATE TABLE onco_wg_list_of_items_for_mapping_or_curation_mapped
(
   concept_id                   integer,
   source_code                  varchar(255),
   source_code_description      varchar(255),
   mappings_arr                 text,
   concept_class_id             varchar(255),
   mapping_path                 text,
   mapping_exists               boolean,
   source_vocabulary_id         varchar(255),
   critique                     text,
   status                       varchar(255),
   duedate                      date,
   todo_priority                integer,
   effort                       float8,
   vocabularyversion            varchar(255),
   vocabularycompatibility      boolean,
   predefinedtarget_complience  boolean,
   partner_cnt                  bigint,
   avg_cnt                      bigint,
   to_value                     varchar(55),
   concept_category             varchar(55),
   logic_group                  bigint,
   confidence                   float8,
   mapper                       varchar(55),
   reviewer                     varchar(55),
   relationship_predicate_id    varchar(10),
   mappig_tool                  varchar(55),
   postcoordination_control     boolean,
   noncancer_relative           boolean,
   mapping_source               varchar(255),
   target_concept_id            integer,
   target_concept_code          varchar(255),
   target_concept_name          varchar(255),
   target_concept_class_id      varchar(255),
   target_standard_concept      varchar(255),
   target_invalid_reason        varchar(255),
   target_domain_id             varchar(255),
   target_vocabulary_id         varchar(255),
   eav_id_array                 integer[],
   eav_value_array              text[]
);

CREATE TABLE onco_wg_proper_compact_unnested_mapping_maps_to_table
(
   concept_id         integer,
   eav_counterpart    integer,
   relationship_id    text,
   target_concept_id  integer,
   target_domain_id   varchar(20)
);

CREATE TABLE onco_wg_proper_compact_unnested_mapping_maps_to_value_table
(
   concept_id         integer,
   eav_counterpart    integer,
   relationship_id    text,
   target_concept_id  integer,
   target_domain_id   varchar(20)
);

CREATE TABLE onco_wg_proper_landing_table
(
   concept_id                integer,
   target_concept_id         integer,
   target_concept_code       varchar(50),
   target_concept_name       varchar(255),
   target_concept_calass_id  varchar(20),
   target_standard_concept   varchar(1),
   target_invalid_reason     varchar(1),
   target_domain_id          varchar(20),
   target_vocabulary_id      varchar(20),
   vocabulary_version        varchar(255)[],
   date_of_assemble          date
);

CREATE TABLE onco_wg_proper_mapping_table
(
   concept_id                      integer,
   source_vocabulary_id            varchar(255),
   eav_id_array                    integer[],
   eav_value_array                 text[],
   noncancer_relative_flag         boolean,
   post_coordination_control_flag  boolean,
   source_code                     varchar(255),
   source_code_description         varchar(255),
   relationship_id                 text,
   relationship_predicate_id       varchar,
   logic_group                     bigint,
   mapping_tool                    text,
   mapping_source                  text,
   target_concept_id               integer,
   target_concept_code             varchar(50),
   target_concept_name             varchar(255),
   target_concept_calass_id        varchar(20),
   target_standard_concept         varchar(1),
   target_invalid_reason           varchar(1),
   target_domain_id                varchar(20),
   target_vocabulary_id            varchar(20),
   vocabulary_version              varchar[]
);

CREATE TABLE onco_wg_warning_concept_list
(
   concept_id               integer,
   concept_category         varchar(55),
   source_code_description  varchar(255)
);

CREATE TABLE onco_wg_wrong_concept_list
(
   concept_id        integer,
   concept_name      text,
   vocabulary_id     text,
   concept_code      text,
   concept_class_id  text,
   critique          text,
   fix               text,
   ts                date,
   mapping_path      text,
   mapping_exists    boolean,
   mappings_arr      text[]
);
