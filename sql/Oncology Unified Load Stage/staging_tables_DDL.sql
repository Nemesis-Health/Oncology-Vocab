/**************************************************************************
* Copyright 2016 Observational Health Data Sciences and Informatics (OHDSI)
*
* Licensed under the Apache License, Version 2.0 (the License);
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an AS IS BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
* 
* Authors: Timur Vakhitov
* Date: 2020
**************************************************************************/
DROP TABLE IF EXISTS concept_stage;
CREATE TABLE concept_stage (
	concept_id int4,
	concept_name VARCHAR (255),
	domain_id VARCHAR (20),
	vocabulary_id VARCHAR (20) NOT NULL,
	concept_class_id VARCHAR (20),
	standard_concept VARCHAR (1),
	concept_code VARCHAR (50) NOT NULL,
	valid_start_date DATE NOT NULL,
	valid_end_date DATE NOT NULL,
	invalid_reason VARCHAR (1)
);

DROP TABLE IF EXISTS concept_relationship_stage;
CREATE TABLE concept_relationship_stage (
	concept_id_1 int4,
	concept_id_2 int4,
	concept_code_1 VARCHAR (50) NOT NULL,
	concept_code_2 VARCHAR (50) NOT NULL,
	vocabulary_id_1 VARCHAR (20) NOT NULL,
	vocabulary_id_2 VARCHAR (20) NOT NULL,
	relationship_id VARCHAR (20) NOT NULL,
	valid_start_date DATE NOT NULL,
	valid_end_date DATE NOT NULL,
	invalid_reason VARCHAR (1)
);

DROP TABLE IF EXISTS concept_synonym_stage;
CREATE TABLE concept_synonym_stage (
	synonym_concept_id int4,
	synonym_name VARCHAR (1000) NOT NULL,
	synonym_concept_code VARCHAR (50) NOT NULL,
	synonym_vocabulary_id VARCHAR (20) NOT NULL,
	language_concept_id int4 NOT NULL
);

DROP TABLE IF EXISTS concept_relationship_manual;
CREATE TABLE concept_relationship_manual (
	concept_code_1 VARCHAR (50) NOT NULL,
	concept_code_2 VARCHAR (50) NOT NULL,
	vocabulary_id_1 VARCHAR (20) NOT NULL,
	vocabulary_id_2 VARCHAR (20) NOT NULL,
	relationship_id VARCHAR (20) NOT NULL,
	valid_start_date DATE NOT NULL,
	valid_end_date DATE NOT NULL,
	invalid_reason VARCHAR (1)
);

DROP TABLE IF EXISTS concept_manual;
CREATE TABLE concept_manual (
	concept_name VARCHAR (255),
	domain_id VARCHAR (20),
	vocabulary_id VARCHAR (20) NOT NULL,
	concept_class_id VARCHAR (20),
	standard_concept VARCHAR (1),
	concept_code VARCHAR (50) NOT NULL,
	valid_start_date DATE,
	valid_end_date DATE,
	invalid_reason VARCHAR (1)
);

DROP TABLE IF EXISTS concept_synonym_manual;
CREATE TABLE concept_synonym_manual (
	synonym_name VARCHAR (1000) NOT NULL,
	synonym_concept_code VARCHAR (50) NOT NULL,
	synonym_vocabulary_id VARCHAR (20) NOT NULL,
	language_concept_id int4 NOT NULL
);

--Create external keys
ALTER TABLE concept_relationship_manual ADD CONSTRAINT unique_manual_relationships UNIQUE (concept_code_1,concept_code_2,vocabulary_id_1,vocabulary_id_2,relationship_id);
ALTER TABLE concept_manual ADD CONSTRAINT unique_manual_concepts UNIQUE (vocabulary_id,concept_code);
ALTER TABLE concept_synonym_manual ADD CONSTRAINT unique_manual_synonyms UNIQUE (synonym_name,synonym_concept_code,synonym_vocabulary_id,language_concept_id);

--Create indexes
ALTER TABLE concept_stage ADD CONSTRAINT idx_pk_cs PRIMARY KEY (concept_code,vocabulary_id);
CREATE INDEX idx_cs_concept_id ON concept_stage (concept_id);
ALTER TABLE concept_relationship_stage ADD CONSTRAINT idx_pk_crs PRIMARY KEY (concept_code_1,concept_code_2,vocabulary_id_1,vocabulary_id_2,relationship_id);
CREATE INDEX idx_concept_code_2 ON concept_relationship_stage (concept_code_2);
ALTER TABLE concept_synonym_stage ADD CONSTRAINT idx_pk_css PRIMARY KEY (synonym_vocabulary_id,synonym_name,synonym_concept_code,language_concept_id);

--Create checks
ALTER TABLE concept_manual ADD CONSTRAINT chk_cmnl_concept_name CHECK (concept_name <> '');
ALTER TABLE concept_manual ADD CONSTRAINT chk_cmnl_concept_code CHECK (concept_code <> '');
ALTER TABLE concept_synonym_manual ADD CONSTRAINT chk_csynmnl_concept_synonym_name CHECK (synonym_name <> '');
ALTER TABLE concept_relationship_manual ADD CONSTRAINT chk_crm_invalid_reason CHECK (COALESCE(invalid_reason,'D')='D');
ALTER TABLE concept_relationship_manual ADD CONSTRAINT chk_crm_concept_code_1 CHECK (concept_code_1 <> '');
ALTER TABLE concept_relationship_manual ADD CONSTRAINT chk_crm_concept_code_2 CHECK (concept_code_2 <> '');
