# Mapping Logic for Oncology Vocabularies

This document outlines the mapping logic for oncology vocabularies. The goal of this mapping is to ensure consistent and accurate representation of oncology concepts, supporting comprehensive data analysis and interoperability.

## Key Mapping Principles

### Oncologic Conditions
* All concepts representing **oncologic conditions** (e.g., "Breast Cancer", "Lung Neoplasm") must be mapped to the **Condition** domain.
* If a concept has lexical equivalents across multiple domains (e.g., SNOMED Observation, ICDO3 Condition), the **Condition** domain takes precedence, regardless of vocabulary priority.
**Note!** Morph Abnormalities **can only be mapped** to other Morph Abnormalities, and **cannot be mapped** to Conditions.

### Tumor Staging and Grading
* All concepts related to **tumor staging and grading** (e.g., "cT4d," "IB") among different vocabularies (SNOMED, LOINC, NAACCR, etc.) must be mapped to the **Measurement** domain within the **Cancer Modifier** vocabulary.
* If the Cancer Modifier vocabulary is unavailable, **SNOMED** is the secondary target vocabulary.

### Metastasis and Tumor Dimensions
* Concepts representing **metastasis, lymph node involvement, and tumor/metastasis dimensions** must be mapped to the **Measurement** domain within the **Cancer Modifier** vocabulary. For details, plesae look at the separate [Metastasis Mapping Logic](https://github.com/Nemesis-Health/Oncology-Vocab/blob/onco-vocabulary-refresh/docs/Metastasis%20Mapping%20Logic.md) documentation.

### Genomic Abnormalities
* All concepts related to **genetic abnormalities** must be mapped to both **SNOMED Condition** and the **OMOP Genomic Measurement** domain, using the relationship `relationship_id = Maps to`.

### Vaccines
* All vaccine concepts must be categorized using the **CVX** vocabulary.

### Anesthesia
* Granular anesthesia concepts (e.g., "Anesthesia for puncture") must be mapped to the general concept of "**Administration of anesthesia**".

### AJCC/UICC Categorization
* All in situ cancer concepts (e.g., "Carcinoma in situ, NOS, of breast, NOS") must be additionally categorized using the **AJCC/UICC** vocabulary (specifically, the concept representing **AJCC/UICC Tis Category**).

### Grade and Resultative Measurements
* Measurements that have **grade components, or resultative values (Lab tests), have to be postcoordinated**.

---

## SNOMED Mapping Logic

This section defines the mapping logic for selected SNOMED CT Standard concepts. The aim is to align clinically relevant oncology terms with the OMOP Common Data Model to preserve semantic integrity, support composability, and enable robust real-world evidence analysis.

Mappings are grouped by transformation patterns according to SNOMED source domain and the required OMOP representation.

### 1. Post-coordination of Measurement Concepts: Measurement → Measurement + Meas Value

Some SNOMED Measurement concepts encode both the test and its qualitative result. These are split into measurement + result using post-coordination.

| source\_concept\_id | source\_concept\_name                 | source\_domain\_id | relationship\_id | target\_concept\_id | target\_concept\_name        | target\_domain\_id |
|---|---|---|---|---|---|---|
|40482494|High carcinoembryonic antigen level| Measurement|Maps to|4197913|CA 125 measurement|Measurement|
| 40482494|High carcinoembryonic antigen level|Measurement|Maps to value|4084765|Above reference range|Meas Value|
|4134634|No metastases|Measurement|Maps to|36769180|Metastasis|Measurement|
|4134634|No metastases|Measurement|Maps to value|9189|Negative|Meas Value|
|4245252|Prostate specific antigen above reference range|Measurement|Maps to| 4272032|Prostate specific antigen measurement | Measurement|
|4245252|Prostate specific antigen above reference range|Measurement|Maps to value| 4084765|Above reference range|Meas Value|
|4331508|Cancer antigen 125 above reference range|Measurement| Maps to|4197913|CA 125 measurement| Measurement|
|4331508| Cancer antigen 125 above reference range|Measurement|Maps to value|4084765|Above reference range|Meas Value|
| 4245698| Tumor metastasis to non-regional lymph nodes absent | Condition| Maps to| 36769243| Distant spread to lymph node | Measurement|
| 4245698| Tumor metastasis to non-regional lymph nodes absent | Condition| Maps to value| 9189| Negative| Meas Value|
| 4263144| Tumor size, largest metastasis| Measurement| Maps to| 36769180| Metastasis| Measurement|
| 4263144| Tumor size, largest metastasis| Measurement| Maps to| 36769446| Dimension of Largest Metastasis | Measurement|

### 2. Domain Reassignment: Observation → Condition

Many concepts originally categorized under Observation in SNOMED are clinically interpreted as conditions. This mapping pattern corrects the semantic domain for use in clinical staging or diagnosis.

| source\_concept\_id | source\_concept\_name | source\_domain\_id | relationship\_id | target\_concept\_id | target\_concept\_name | target\_domain\_id |
| --- | --- | --- | --- | --- | --- | --- |
| 37312397| Benign insulinoma| Observation| Maps to| 4111803| Endocrine pancreatic adenoma | Condition|

### 3. Mapping SNOMED Staging Concepts to Cancer Modifier

Certain SNOMED Meas Value concepts representing general stage groupings (e.g., Stage 0, Stage 1, etc.) require mapping into the **Cancer Modifier** vocabulary to unify staging logic under AJCC-compliant architecture. This is necessary to ensure consistent staging representation across data sources.

| source\_concept\_id | source\_concept\_name | source\_domain\_id | source\_vocabulary\_id | relationship\_id | target\_concept\_id | target\_concept\_name | target\_domain\_id | target\_vocabulary\_id |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 4127500| Stage 0| Meas Value| SNOMED| Maps to| 1634946| Stage 0| Measurement| Cancer Modifier|

### 4. Standardizing and Unifying Metastasis and Lymph Node Concepts

SNOMED metastasis-related and lymph node concepts must be uniformly mapped to standardized **Cancer Modifier** concepts, clearly specifying metastatic presence, location, or lymph node involvement. This standardization is essential for accurate patient cohorting and reliable staging analytics.

| **source\_concept\_id** | **source\_concept\_code** | **source\_concept\_name** | **source\_domain\_id** | **source\_vocabulary\_id** | **source\_concept\_class\_id** | **relationship\_id** | **target\_concept\_id** | **target\_concept\_code** | **target\_concept\_name** | **target\_domain\_id** | **target\_vocabulary\_id** | **target\_concept\_class\_id** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 4163446 | 399409002 | Distant metastasis present | Condition | SNOMED | Clinical Finding | Maps to | 36769180 | OMOP4998856 | Metastasis | Measurement | Cancer Modifier | Metastasis |
| 4245697 | 396787000 | Tumor metastasis to non-regional lymph nodes present | Condition | SNOMED | Clinical Finding | Maps to | 36769243 | OMOP4998920 | Distant spread to lymph node | Measurement | Cancer Modifier | Nodes |
| 4265295 | 397440000 | Anatomic location of excised lymph node containing metastatic neoplasm | Observation | SNOMED | Observable Entity | Maps to | 36768587 | OMOP4998263 | Spread to lymph node | Measurement | Cancer Modifier | Nodes |
| 4336816 | 8707003 | Metastatic from | Observation | SNOMED | Attribute | Maps to | 36769180 | OMOP4998856 | Metastasis | Measurement | Cancer Modifier | Metastasis |
| 4129938 | 261731003 | CNS metastases | Measurement | SNOMED | Staging / Scales | Maps to | 35226096 | OMOP5031564 | Metastasis to central nervous system | Measurement | Cancer Modifier | Metastasis |
| 4299435 | 385421009 | Site of distant metastasis | Observation | SNOMED | Observable Entity | Maps to | 36769180 | OMOP4998856 | Metastasis | Measurement | Cancer Modifier | Metastasis |
| 4161021 | 399462009 | Secondary tumor site | Observation | SNOMED | Observable Entity | Maps to | 36769180 | OMOP4998856 | Metastasis | Measurement | Cancer Modifier | Metastasis |
| 4168514 | 417957003 | Uveal metastasis | Measurement | SNOMED | Staging / Scales | Maps to | 35225584 | OMOP5031993 | Metastasis to uveal tract | Measurement | Cancer Modifier | Metastasis |
| 4154265 | 371512006 | Presence of direct invasion by primary malignant neoplasm to lymphatic vessel and/or small blood vessel | Observation | SNOMED | Observable Entity | Maps to | 36768891 | OMOP4998568 | Lymphovascular Invasion (LVI) | Measurement | Cancer Modifier | Extension/Invasion |

### 5. Unique cases

#### a. Metastatic Teratoma

Presence of 'Metastasis' part indicates that teratoma is malignant.

| source_concept_id | source_concept_name | source_domain_id | relationship_id | target_concept_id | target_concept_name | target_domain_id |
|---|---|---|---|---|---|---|
| 46271142 | Metastatic teratoma | Observation | Maps to | 40391775 | Malignant teratoma | Condition |
| 46271142 | Metastatic teratoma | Observation | Maps to | 36769180 | Metastasis | Measurement |

#### b. Loss of source_concept diagnostic context in SNOMED to Cancer Modifier mapping

To map SNOMED concepts that describe manifestations of cancer (e.g., metastases, nodal spread, distant involvement) into unified Cancer Modifier targets to reduce concept redundancy. 

* “Metastasis” concept in Cancer Modifier is used to absorb a wide range of SNOMED Condition/Observation terms that imply the presence of metastases. 
* The focus is on creating clean, analytically tractable dimensions for use in cohort selection, staging, and outcome modeling.

| source_concept_id | source_concept_name | source_domain_id | relationship_id | target_concept_id | target_concept_name | target_domain_id |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| 4190930 | Cancer diagnosis based on metastatic histological evidence | Condition | Maps to | 36769180 | Metastasis | Measurement |

#### c. Non-metastatic Cancer

To destandartize excessive SNOMED concepts that describe complex oncology terminology. Concepts describing non-metastatic cancers should ideally be post-coordinated (Maps to+Maps to value) into: 

* SNOMED Condition concept representing the primary malignancy (e.g., malignant neoplasm of prostate), 
* Cancer Modifier concept reflecting metastatic status, 
* Meas Value such as Negative to indicate absence of metastasis.

| source_concept_id | source_concept_name | source_domain_id | relationship_id | target_concept_id | target_concept_name | target_domain_id |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| 37208188 | Non-metastatic prostate cancer | Condition | Maps to | 36769180 | Metastasis | Measurement |
| 37208188 | Non-metastatic prostate cancer | Condition | Maps to value | 9189 | Negative | Meas Value |
| 37208188 | Non-metastatic prostate cancer | Condition | Maps to | 37208188 | Non-metastatic prostate cancer | Condition |

#### d. Number of lymph nodes containing micrometastases in excised specimen

* SNOMED concepts referring to quantitative pathology findings (e.g., number of lymph nodes with micrometastases) should be mapped to specific Cancer Modifier concepts that preserve this detail. 
* To capture granular histopathological attributes of lymph node involvement for staging and prognostic analysis. 
* Concepts representing count-based or histologic micrometastatic evidence should not be reduced to general spread concepts, which lose interpretive specificity. 

| source_concept_id | source_concept_name | source_domain_id | relationship_id | target_concept_id | target_concept_name | target_domain_id |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| 40479814 | Number of lymph nodes containing micrometastases in excised specimen | Measurement | Maps to | 36768460 | Lymph Nodes with Micrometastases | Measurement |

#### e. Non-Hodgkin lymphoma of central nervous system metastatic to lymph node of lower limb

* SNOMED concepts that describe metastatic spread of lymphomas should retain both: 
* * The correct lymphoma subtype (e.g., Non-Hodgkin’s lymphoma), 
* * And the fact of spread to Lymph Node.
**Note!** This is a temporary decision. In the future, more detailed concepts regarding Lymph Node Spread will be populated.
* To capture specific lymphoma types whenever available, to support more precise cohort stratification and avoid overgeneralization. 
* Avoid assumptions about primary tumor location when the source concept does not specify it explicitly.

| source_concept_id | source_concept_name | source_domain_id | relationship_id | target_concept_id | target_concept_name | target_domain_id |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| 37016150 | Non-Hodgkin lymphoma of central nervous system metastatic to lymph node of lower limb | Condition | Maps to | 40488942 | Non-Hodgkin’s lymphoma of central nervous system | Condition |
| 37016150 | Non-Hodgkin lymphoma of central nervous system metastatic to lymph node of lower limb | Condition | Maps to | 36768587 | Spread to lymph node | Measurement |

#### f. Materno-fetal metastatic malignant melanoma

The concept Materno-fetal metastatic malignant melanoma is mapped only to:  
* A general Condition (Malignant melanoma) 
* And a general Cancer Modifier (Metastasis)

| source_concept_id | source_concept_name | source_domain_id | relationship_id | target_concept_id | target_concept_name | target_domain_id |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| 4297801 | Materno-fetal metastatic malignant melanoma | Condition | Maps to | 4162276 | Malignant melanoma | Condition |
| 4297801 | Materno-fetal metastatic malignant melanoma | Condition | Maps to | 36769180 | Metastasis | Measurement |

#### g. Regional lymph node metastasis present

* SNOMED concepts indicating the presence of regional or distant lymph node metastases should be mapped exclusively to Cancer Modifier concepts (e.g., Distant spread to lymph node or Regional spread to lymph node.
* Laterality have not be taken into account (right, left, bilateral does not required for cohort building)

| source_concept_id | source_concept_name | source_domain_id | source_vocabulary_id | relationship_id | target_concept_id | target_concept_name | target_domain_id | target_vocabulary_id |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| 4257442 | Right regional lymph node metastasis present | Condition | SNOMED | Maps to | 36769269 | Regional spread to lymph node | Measurement | Cancer Modifier |
| 4163438 | Regional lymph node metastasis present | Condition | SNOMED | Maps to | 36769269 | Regional spread to lymph node | Measurement | Cancer Modifier |

## NAACCR Mapping Logic

### Handling of Duplicate or Contextual TNM Values

When mapping NAACCR Value concepts to **Cancer Modifier**, identical staging strings (e.g., cM0, pTis, cN0) can appear under different NAACCR Variables, such as TNM Clin M or TNM Path M. Despite field differences, these values often represent the same clinical or pathological assertion.

Mapping must prioritize clinical semantics over field origin, assigning a single OMOP standard concept per staging meaning. This ensures AJCC-compliant logic and avoids creating invalid or redundant Cancer Modifier entries.

#### a. cM0(i+) used in both Clinical and Pathological M fields**

| **source\_concept\_id** | **source\_concept\_code** | **source\_concept\_name** | **NAACCR Variable** | **source\_domain\_id** | **source\_vocabulary\_id** | **source\_concept\_class\_id** | **relationship\_id** | **target\_concept\_id** | **target\_concept\_code** | **target\_concept\_name** | **target\_domain\_id** | **target\_vocabulary\_id** | **target\_concept\_class\_id** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 35919673 | 960@c0 | cM0 | TNM Clin M | Meas Value | NAACCR | NAACCR Value | Maps to | 1635291 | c-AJCC/UICC-M0 | AJCC/UICC clinical M0 Category | Measurement | Cancer Modifier | Staging/Grading |
| 35919383 | 900@c0 | cM0 | TNM Path M | Meas Value | NAACCR | NAACCR Value | Maps to | 1635291 | c-AJCC/UICC-M0 | AJCC/UICC clinical M0 Category | Measurement | Cancer Modifier | Staging/Grading |

AJCC does not define a ‘pM0’ category. When distant metastases are excluded clinically, but no histological evidence exists, registrars may record ‘cM0’ even under the Path M field. Both must map to the clinical ‘cM0’ concept to avoid generating invalid pathological semantics.

#### b. pTis in Clinical and Pathological T fields**

| **source\_concept\_id** | **source\_concept\_code** | **source\_concept\_name** | **NAACCR Variable** | **source\_domain\_id** | **source\_vocabulary\_id** | **source\_concept\_class\_id** | **relationship\_id** | **target\_concept\_id** | **target\_concept\_code** | **target\_concept\_name** | **target\_domain\_id** | **target\_vocabulary\_id** | **target\_concept\_class\_id** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 35918423 | 880@p000 | pTis | TNM Path T | Meas Value | NAACCR | NAACCR Value | Maps to | 1634581 | p-AJCC/UICC-Tis | AJCC/UICC pathological Tis Category | Measurement | Cancer Modifier | Staging/Grading |
| 35918651 | 840@c000 | pTis | TNM Clin T | Meas Value | NAACCR | NAACCR Value | Maps to | 1634581 | p-AJCC/UICC-Tis | AJCC/UICC pathological Tis Category | Measurement | Cancer Modifier | Staging/Grading |

Tis (in situ) stage can be defined in a clinical context only with pathological confirmation and cannot exist as a clinical category. Even if recorded in the clinical T field, they must map to a pathological Tis concept to preserve semantic correctness and AJCC compliance.

#### c. cN0m+ in both Clinical and Pathological N fields**

| **source\_concept\_id** | **source\_concept\_code** | **source\_concept\_name** | **NAACCR Variable** | **source\_domain\_id** | **source\_vocabulary\_id** | **source\_concept\_class\_id** | **relationship\_id** | **target\_concept\_id** | **target\_concept\_code** | **target\_concept\_name** | **target\_domain\_id** | **target\_vocabulary\_id** | **target\_concept\_class\_id** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 35919012 | 950@c1 | cM1 | TNM Clin M | Meas Value | NAACCR | NAACCR Value | Maps to | 1635085 | c-AJCC/UICC-M1 | AJCC/UICC clinical M1 Category | Measurement | Cancer Modifier | Staging/Grading |
| 35919300 | 900@c1 | cM1 | TNM Path M | Meas Value | NAACCR | NAACCR Value | Maps to | 1635085 | c-AJCC/UICC-M1 | AJCC/UICC clinical M1 Category | Measurement | Cancer Modifier | Staging/Grading |
| 35919370 | 900@p1 | pM1 | TNM Path M | Meas Value | NAACCR | NAACCR Value | Maps to | 1635505 | p-AJCC/UICC-M1 | AJCC/UICC pathological M1 Category | Measurement | Cancer Modifier | Staging/Grading |
| 35919660 | 960@p1 | pM1 | TNM Clin M | Meas Value | NAACCR | NAACCR Value | Maps to | 1635505 | p-AJCC/UICC-M1 | AJCC/UICC pathological M1 Category | Measurement | Cancer Modifier | Staging/Grading |

Unlike M0, ‘pM1’ is a valid AJCC category for histologically confirmed metastases. Regardless of source field, ‘pM1’ should map to the pathological concept, and ‘cM1’ to the clinical one. Field origin must not override true clinical meaning.

#### d. ‘cN0’ Used in TNM Clin N and TNM Path N**

| **source\_concept\_id** | **source\_concept\_code** | **source\_concept\_name** | **NAACCR Variable** | **source\_domain\_id** | **source\_vocabulary\_id** | **source\_concept\_class\_id** | **relationship\_id** | **target\_concept\_id** | **target\_concept\_code** | **target\_concept\_name** | **target\_domain\_id** | **target\_vocabulary\_id** | **target\_concept\_class\_id** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 35919626 | 950@c0 | cN0 | TNM Clin N | Meas Value | NAACCR | NAACCR Value | Maps to | 1634145 | c-AJCC/UICC-N0 | AJCC/UICC clinical N0 Category | Measurement | Cancer Modifier | Staging/Grading |
| 35919481 | 890@c0 | cN0 | TNM Path N | Meas Value | NAACCR | NAACCR Value | Maps to | 1634145 | c-AJCC/UICC-N0 | AJCC/UICC clinical N0 Category | Measurement | Cancer Modifier | Staging/Grading |

Although this value appears under both TNM Clin N and TNM Path N, it semantically represents clinical staging. If no histological confirmation of lymph node status is available (e.g., no lymph node dissection), then even entries under TNM Path N using cN0 must be interpreted as clinical in nature. Mapping both entries to the AJCC/UICC clinical N0 Category avoids semantic errors like falsely assuming pathological confirmation of node status, which is critical for accurate cohort stratification and survival analysis.

#### e. cN0m± / pN0m± (Molecular assessment of regional lymph nodes) NAACCR Values**

NAACCR Value concepts with additional molecular (mol+/mol-) or histological (i+/i-) specifications describe the detection of isolated tumor cells (ITCs) in regional lymph nodes via molecular or histological methods, respectively. They are fundamentally distinct from distant metastases. Therefore, mapping these concepts to the general "Metastasis" cancer modifier concept is semantically incorrect.

| **source\_concept\_id** | **source\_concept\_code** | **source\_concept\_name** | **source\_domain\_id** | **source\_vocabulary\_id** | **source\_concept\_class\_id** | **relationship\_id** | **target\_concept\_id** | **target\_concept\_code** | **target\_concept\_name** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 35910008 | 950@c0M- | cN0m- | Meas Value | NAACCR | NAACCR Value | Maps to | 1634145 | c-AJCC/UICC -N0 | AJCC/UICC clinical N0 Category |
| 35919731 | 950@c0M+ | cN0m+ | Meas Value | NAACCR | NAACCR Value | Maps to | 1634145 | c-AJCC/UICC -N0 | AJCC/UICC clinical N0 Category |
| 35919273 | 890@p0M- | pN0m- | Meas Value | NAACCR | NAACCR Value | Maps to | 1635597 | p-AJCC/UICC -N0 | AJCC/UICC pathologic N0 Category |
| 35919608 | 890@p0M+ | pN0m+ | Meas Value | NAACCR | NAACCR Value | Maps to | 1633485 | p-AJCC/UICC -N0(mol+) | AJCC/UICC pathologic N0(mol+) Category |

**Rationale:**
* **m+/m- in NAACCR = mol+/mol- in AJCC.** They denote the presence or absence of isolated tumor cells detected only by molecular techniques (e.g., RT-PCR) in regional lymph nodes. This has no relation to distant metastasis.
* **Clinical stage.** AJCC 8 (2016) abolished the use of (mol±) suffixes in clinical staging; NAACCR subsequently dropped these codes. Therefore, both `cN0m+` and `cN0m-` are mapped to the general clinical N0 concept (1634145) to preserve valid analytics, even though `cN0m+` is still erroneously "Standard/Valid" in Athena.
* **Pathologic stage.** AJCC retains (mol+) for pathology. `pN0m+` is mapped to the specific `pN0(mol+)` concept (1633485) to keep the molecular detail. There is no `pN0(mol-)` concept in Cancer Modifier; `pN0m-` therefore maps to the broader `pN0` (1635597). Creating a `pN0(mol-)` concept would achieve one-to-one coverage but is not critical for cohort logic: both `pN0` and `pN0(mol-)` represent “no metastatic involvement” of nodes - the only difference is documentation of additional testing.

#### f. cN0i± / pN0(i±) (Immunohistochemical assessment of regional lymph nodes) NAACCR Values**

| **source\_concept\_id** | **source\_concept\_code** | **source\_concept\_name** | **source\_domain\_id** | **source\_vocabulary\_id** | **source\_concept\_class\_id** | **relationship\_id** | **target\_concept\_id** | **target\_concept\_code** | **target\_concept\_name** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 35919501 | 950@c0I- | cN0i- | Meas Value | NAACCR | NAACCR Value | Maps to | 1634145 | c-AJCC/UICC -N0 | AJCC/UICC clinical N0 Category |
| 35919561 | 950@c0I+ | cN0i+ | Meas Value | NAACCR | NAACCR Value | Maps to | 1634145 | c-AJCC/UICC -N0 | AJCC/UICC clinical N0 Category |
| 35919313 | 890@p0I- | pN0(i-) | Meas Value | NAACCR | NAACCR Value | Maps to | 1635597 | p-AJCC/UICC -N0 | AJCC/UICC pathologic N0 Category |
| 35919328 | 890@p0I+ | pN0(i+) | Meas Value | NAACCR | NAACCR Value | Maps to | 1633503 | p-AJCC/UICC -N0(i+) | AJCC/UICC pathologic N0(i+) Category |

**Rationale:**
* **i+/i-** capture isolated tumor cells detected morphologically or by IHC. Logic parallels the molecular case: AJCC bans (i±) in clinical N after 2016, so both clinical codes map to generic cN0. For pathology (i+) is retained and mapped specifically; (i-) maps to generic pN0 due to missing Cancer Modifier concept.
* No secondary mapping to generic Cancer Modifier “Metastasis” for any `m+` or `i+` value.

---

## LOINC Mapping Logic

### Pathological M1 LOINC Codes


LOINC code beginning with 'P' refers to a pathological M1 category (specifically P1a, P1b, P1c, or P1d).

|source_concept_id|source_concept_code|source_concept_name|relationship_id|target_concept_id|target_concept_code|target_concept_name|target_vocabulary_id|
|---|---|---|---|---|---|---|---|
|46237474|LA21835-6|P1a|Maps to|1633518|p-AJCC/UICC-M1a|AJCC/UICC pathological M1a Category|Cancer Modifier|
|46237066|LA21836-4|P1b|Maps to|1634093|p-AJCC/UICC-M1b|AJCC/UICC pathological M1b Category|Cancer Modifier|
|46238003|LA21837-2|P1c|Maps to|1635338|p-AJCC/UICC-M1c|AJCC/UICC pathological M1c Category|Cancer Modifier|
|46237475|LA21838-0|P1d|Maps to|1635373|p-AJCC/UICC-M1d|AJCC/UICC pathological M1d Category|Cancer Modifier|

## Absence of Precise LOINC Categories

LOINC codes should be mapped to a more general entity when a precise, exact match is not available in the target vocabulary.

|source_concept_id|source_concept_code|source_concept_name|relationship_id|target_concept_id|target_concept_code|target_concept_name|target_vocabulary_id|
|---|---|---|---|---|---|---|---|
|46237995|LA21840-6|P1m|Maps to|1635505|p-AJCC/UICC-M1|AJCC/UICC pathological M1 Category|Cancer Modifier|
|46237078|LA21839-8|P1e|Maps to|1635505|p-AJCC/UICC-M1|AJCC/UICC pathological M1 Category|Cancer Modifier|
|46237075|LA21878-6|M1e|Maps to|1635142|AJCC/UICC-M1|AJCC/UICC M1 Category|Cancer Modifier|
|46237996|LA21841-4|P1m1|Maps to|1635505|p-AJCC/UICC-M1|AJCC/UICC pathological M1 Category|Cancer Modifier|
|46237063|LA21821-6|N1m|Maps to|1634434|AJCC/UICC-N1|AJCC/UICC N1 Category|Cancer Modifier|

---

## ICDO3 Mapping Logic

### ICDO3 to Conditions + OMOP Genomic mappings

ICDO3 concepts often describe specific oncologic conditions that are intrinsically linked to underlying genomic abnormalities. To ensure comprehensive data representation and support detailed genomic analysis, these ICDO3 concepts are mapped to multiple target concepts:

* **OMOP Genomic Measurements**: Direct links are established to one or more OMOP Genomic Measurement concepts that precisely represent the specific gene fusions, translocations, or other genetic alterations described within the ICDO3 concept. This captures the molecular details crucial for precision oncology.
* **SNOMED Condition**: The ICDO3 concept is also mapped to a corresponding SNOMED Condition concept that represents the clinical diagnosis, often including the genomic detail where available in SNOMED. This ensures the condition is also represented within a widely used clinical terminology.

This multi-faceted mapping approach, using the `Maps to` relationship, allows for the capture of both the clinical manifestation and the underlying genomic drivers of the disease, enabling richer data analysis and research.

| source_concept_id | source_concept_name | source_domain_id | source_vocabulary_id | relationship_id | target_concept_id | target_concept_name | target_domain_id | target_vocabulary_id |
|---|---|---|---|---|---|---|---|---|
| 36551184 | 9869/3-C42.1 Acute myeloid leukemia with inv(3)(q21;q26.2) or t(3;3)(q21;q26.2); RPN1-EVI1 of bone marrow | NULL | NULL | Maps to | 19644373 | OMOP5395046 MECOM::RPN1 gene fusion measurement | OMOP Genomic | NULL |
| 36551184 | 9869/3-C42.1 Acute myeloid leukemia with inv(3)(q21;q26.2) or t(3;3)(q21;q26.2); RPN1-EVI1 of bone marrow | NULL | NULL | Maps to | 36017895 | OMOP5043015 t(3;3)(q21;q26.2) measurement | OMOP Genomic | NULL |
| 36551184 | 9869/3-C42.1 Acute myeloid leukemia with inv(3)(q21;q26.2) or t(3;3)(q21;q26.2); RPN1-EVI1 of bone marrow | NULL | NULL | Maps to | 36683269 | 780844005 Acute myeloid leukemia with inv(3)(q21q26.2) or t(3;3)(q21;q26.2); RPN1-EVI1 | SNOMED | NULL |

### Connective, Subcutaneous and other Soft Tissues

For source concepts that describe neoplasms involving a combination of connective, subcutaneous, and/or soft tissues (e.g., "Ewing sarcoma of connective, Subcutaneous and other soft tissues, NOS"), a direct, fully equivalent target concept may not exist. In such cases, the mapping prioritizes a single target concept based on the following hierarchical order:

1. If a target concept specifying "**Connective tissue**" exists for the given neoplasm, **it takes the highest priority**.
2. If **no "Connective tissue"** equivalent exists, but a target concept specifying "**Soft tissue**" exists, **it is chosen next**.
3. If **neither "Connective tissue" nor "Soft tissue" equivalents exist**, then a target concept specifying "**Subcutaneous tissue**" is chosen.

**Note!** Only one target concept will be chosen based on this priority order, even if multiple partial equivalents (e.g., separate concepts for "Soft Tissue" and "Subcutaneous Tissue") could technically apply. Other should be destandardized.

| source_concept_id | source_concept_code | source_concept_name | relationship_id | target_concept_id | target_concept_code | target_concept_name | target_vocabulary_id |
|---|---|---|---|---|---|---|---|
| 36544988 | 8890/3-C49.9 | Leiomyosarcoma, NOS, of connective, Subcutaneous and other soft tissues, NOS | Maps to | 40486588	| 447804006 | Leiomyosarcoma of connective tissue | SNOMED |
| 36526739 | 9260/3-C49.9 | Ewing sarcoma of connective, Subcutaneous and other soft tissues, NOS | Maps to | 40487487 | 447951009 | Ewing's sarcoma of soft tissue | SNOMED |

---

## Cancer Modifier Mapping Logic

### Prostate Weight

Measurements related to the dimensions, weight, or size of an organ (e.g., "Prostate Weight") must be hierarchically connected (via an "Is a" relationship) to a corresponding anatomical "[Organ] Feature" concept. 

| source_concept_id | source_concept_code | source_concept_name | relationship_id | target_concept_id | target_concept_code | target_concept_name | target_vocabulary_id |
|---|---|---|---|---|---|---|---|
| 36769386 | OMOP4999062 | Prostate Weight | Is a | 4265532 | 364219001 | Prostate feature | SNOMED |

---

## HCPCS Mapping Logic

### Oncology Disease Status

When an HCPCS code encompasses a detailed oncology concept describing disease status, including specific cancer types, stages, and other characteristics (e.g., "Oncology; disease status; invasive female breast cancer..."), and a direct, singular equivalent is not available in the target vocabularies, a multi-faceted mapping approach is employed to maximize patient cohort inclusion.

This approach involves mapping the complex HCPCS source concept to the most appropriate:

* **SNOMED Condition**: To capture the primary oncologic condition (e.g., "Invasive female breast cancer").
* **Cancer Modifier Stage**: To represent the specific cancer stage described by the HCPCS code (e.g., "Stage III").

| source_concept_id | source_concept_code | source_concept_name | relationship_id | target_concept_id | target_concept_code | target_concept_name | target_vocabulary_id |
|---|---|---|---|---|---|---|---|
| 2618008 | G9074 | Oncology; disease status; invasive female breast cancer (does not include ductal carcinoma in situ); adenocarcinoma as predominant cell type; stage iiia-iiib; and not t3, n1, m0; and er and pr negative; with no evidence of disease progression, recurrence, or metastases (for use in a medicare-approved demonstration project) | Maps to | 3655521 | 865954003 | Adenocarcinoma of breast | SNOMED |
| 2618008 | G9074 | Oncology; disease status; invasive female breast cancer (does not include ductal carcinoma in situ); adenocarcinoma as predominant cell type; stage iiia-iiib; and not t3, n1, m0; and er and pr negative; with no evidence of disease progression, recurrence, or metastases (for use in a medicare-approved demonstration project) | Maps to | 1634191	| Stage-3 |	Stage 3 | Cancer Modifier |
