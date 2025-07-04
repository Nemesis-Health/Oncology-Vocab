# Project Database Setup and Maintenance

This guide outlines the steps for setting up and updating the manual tables required for Oncology Unified Load Stage run.

## Initial Setup

1. Create the necessary manual tables in your database.

* Execute the `create_manual_tables.sql` script.
* Fill the tables using .CSV attached [add link to .CSV at https://ohdsi.github.io/OncologyWG/]

2. Clean up existing data and update manual tables with new mappings.

* Run the `update_manual_tables.sql` script.
