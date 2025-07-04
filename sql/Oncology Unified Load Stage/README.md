# Project Setup and Data Loading Guide

This guide outlines the steps to set up database tables for Oncology vocabularies. It details how to create, fill, and meticulously clean up source tables with correct mappings. Subsequently, it covers full-cycle vocabularies update and building the concept_ancestor. 

## Instructions

Please follow the steps below in the specified order:

1. Run [`FastRecreateSchema()`](https://github.com/OHDSI/Vocabulary-v5.0/blob/master/working/fast_recreate_schema.sql) function, including deprecated relatsionships and synonyms. This script allows to recreate main tables (concept, concept_relationship, concept_synonym etc) without dropping your schema.

2. Restore the basic tables to the state of the February release:

   `SELECT * FROM audit.restorebasictables(65221064)`

3. Navigate to the [`Manual Work`](https://github.com/Nemesis-Health/Oncology-Vocab/tree/onco-vocabulary-refresh/sql/Oncology%20Unified%20Load%20Stage/Manual%20Work) folder and carefully follow all instructions provided within its documentation. This folder contains critical pre-setup steps that must be completed before proceeding.

4. Execute the [`staging_tables_DDL.sql`](https://github.com/Nemesis-Health/Oncology-Vocab/blob/onco-vocabulary-refresh/sql/Oncology%20Unified%20Load%20Stage/staging_tables_DDL.sql) script. This script creates necessary tables where data will be stored.

5. Run the [`load_stage.sql`](https://github.com/Nemesis-Health/Oncology-Vocab/blob/onco-vocabulary-refresh/sql/Oncology%20Unified%20Load%20Stage/load_stage.sql) script. This script populates the newly created staging tables with data.

6. Run [`check_stage_tables.sql`](https://github.com/Nemesis-Health/Oncology-Vocab/blob/onco-vocabulary-refresh/sql/Oncology%20Unified%20Load%20Stage/Tests/check_stage_tables.sql) to look for possible issues.

**Note!** You will found the next issue: `"concept_stage.concept_code not trimmed for concept_name: Odontogenic carcinosarcoma"`. 

Just delete it for now.

    DELETE FROM concept_stage
    WHERE concept_id = 36402927;

7. Run [`generic_update()`](https://github.com/OHDSI/Vocabulary-v5.0/blob/master/working/generic_update.sql)

8. Run [`QA tests`](https://github.com/OHDSI/Vocabulary-v5.0/tree/a9bdf5efd77208110c6275407c718b389e21010e/working/packages/QA_TESTS)

9. Run [`pConceptAncestor()`](https://github.com/OHDSI/Vocabulary-v5.0/blob/master/working/packages/vocabulary_pack/pConceptAncestor.sql) function. The function allows to build a full concept ancestor.
