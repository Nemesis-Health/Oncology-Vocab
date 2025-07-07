# OHDSI Oncology Vocabulary Toolkit

**Purpose**  
This repository contains scripts, reference tables, and validation notebooks used to update and maintain oncology-related content in the OHDSI Standardized Vocabularies. It supports parallel distribution for early adopters and provides a reproducible workflow for eventual inclusion in official Athena releases.

---

## Repository Structure

| Path | Contents |
|------|----------|
| `sql/` | Parameterized SQL files (`load_stage.sql`, source tables DDL, QA queries). |
| `python/` | Jupyter notebooks and Python helpers for data validation and reporting. |
| `docs/` | Markdown guides (mapping rules, destandardization SOP, release notes). |
| `vocabularies/` | ZIP Archive with refreshed vocabularies |

---

## Prerequisites

* **PostgreSQL 11+** (or compatible RDBMS) with OMOP CDM v5.4 vocabulary schema.
* Sufficient privileges to create schemas and run `COPY` / `\i` commands.
* Python 3.9+ with `pandas`, `sqlalchemy` (for optional QA notebooks).
