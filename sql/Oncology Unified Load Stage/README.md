# Project Setup and Data Loading Guide

This guide outlines the steps required to set up the necessary database tables and load initial staging data.

## Instructions

Please follow the steps below in the specified order:

1.  Navigate to the `Manual Work` folder and carefully follow all instructions provided within its documentation. This folder contains critical pre-setup steps that must be completed before proceeding.

2.  Execute the `staging_tables_DDL.sql` script. This script creates necessary tables where data will be stored.

3.  After the staging tables have been created, run the `load_stage.sql` script. This script populates the newly created staging tables with data.

4. After executing the `load_stage.sql`, run `check_stage_tables()` to avoid issues.

**Note!** You will found the next issue: `"concept_stage.concept_code not trimmed for concept_name: Odontogenic carcinosarcoma",1`. Just delete it for now.

`DELETE FROM concept_stage
  WHERE concept_id = 36402927;`

5. Run [`generic_update()`](https://github.com/OHDSI/Vocabulary-v5.0/blob/master/working/generic_update.sql)

6. Run [`QA tests`](https://github.com/OHDSI/Vocabulary-v5.0/tree/a9bdf5efd77208110c6275407c718b389e21010e/working/packages/QA_TESTS) after generic_update()
