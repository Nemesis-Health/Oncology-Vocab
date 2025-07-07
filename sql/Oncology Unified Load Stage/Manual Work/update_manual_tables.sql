--create table for correct mappings
CREATE TABLE nemesis_mapping_0525 (
  source_concept_id	integer,
  source_concept_name	varchar(255),
  source_domain_id	varchar(20),
  source_vocabulary_id	varchar(20),
  source_concept_class_id	varchar(20),
  source_standard_concept	varchar(1),
  source_concept_code	varchar(50),
  source_valid_start_date	date,
  source_valid_end_date	date,
  source_invalid_reason	varchar(1),
  relationship_id	varchar,
  predicate_id	varchar,
  confidence	float8,
  target_concept_id	integer,
  target_concept_name	varchar(255),
  target_domain_id	varchar(20),
  target_vocabulary_id	varchar(20),
  target_concept_class_id	varchar(20),
  target_standard_concept	varchar(1),
  target_concept_code	varchar(50),
  target_valid_start_date	date,
  target_valid_end_date	date,
  target_invalid_reason	varchar(1)
  );

--upload correct mappings to table
INSERT INTO nemesis_mapping_0525 (source_concept_id,source_concept_name,source_domain_id,source_vocabulary_id,source_concept_class_id,source_standard_concept,source_concept_code,source_valid_start_date,source_valid_end_date,source_invalid_reason,relationship_id,predicate_id,confidence,target_concept_id,target_concept_name,target_domain_id,target_vocabulary_id,target_concept_class_id,target_standard_concept,target_concept_code,target_valid_start_date,target_valid_end_date,target_invalid_reason) 
VALUES
  (706011,'Metastasis','Observation','Cancer Modifier','Morph Abnormality',NULL,'OMOP5160779',DATE '2021-10-26',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (36769386,'Prostate Weight','Measurement','Cancer Modifier','Dimension',NULL,'OMOP4999062',DATE '2020-09-23',DATE '2021-10-26','D','Is a','skos:broadMatch','1.0',4265532,'Prostate feature','Observation','SNOMED','Observable Entity','S','364219001',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (35225557,'Metastasis to large intestine and rectum','Measurement','Cancer Modifier','Metastasis',NULL,'OMOP5031679',DATE '2020-10-13',DATE '2021-11-18','U','Maps to','skos:exactMatch','1.0',35225543,'Metastasis to large intestine','Measurement','Cancer Modifier','Metastasis','S','OMOP5031678',DATE '2020-10-13',DATE '2099-12-31',NULL),
  (2617222,'Colorectal cancer screening; alternative to g0105, screening colonoscopy, barium enema. (Deprecated)','Measurement','HCPCS','HCPCS',NULL,'G0120',DATE '1998-01-01',DATE '2024-12-31',NULL,'Maps to','skos:exactMatch','1.0',4175226,'Screening for malignant neoplasm of colon','Measurement','SNOMED','Procedure','S','275978004',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (2617209,'Colorectal cancer screening; alternative to g0104, screening sigmoidoscopy, barium enema (Deprecated)','Measurement','HCPCS','HCPCS',NULL,'G0106',DATE '1998-01-01',DATE '2024-12-31',NULL,'Maps to','skos:exactMatch','1.0',4175226,'Screening for malignant neoplasm of colon','Measurement','SNOMED','Procedure','S','275978004',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (2618021,'Oncology; disease status; colon cancer, limited to invasive cancer, adenocarcinoma as predominant cell type; m1 at diagnosis, metastatic, locally recurrent, or progressive with current clinical, radiologic, or biochemical evidence of disease (for use i...','Observation','HCPCS','HCPCS',NULL,'G9087',DATE '2006-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634568,'Advanced Stage','Measurement','Cancer Modifier','Staging/Grading','S','advanced',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (915611,'Counseling visit to discuss need for lung cancer screening using low dose ct scan (ldct) (service is for eligibility determination and shared decision making)','Observation','HCPCS','HCPCS','S','G0296',DATE '2015-02-05',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4171431,'Screening for malignant neoplasm of lung','Measurement','SNOMED','Procedure','S','275981009',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (2617376,'Low dose ct scan (ldct) for lung cancer screening (Deprecated)','Procedure','HCPCS','HCPCS',NULL,'G0297',DATE '2015-02-05',DATE '2020-12-31',NULL,'Maps to','skos:exactMatch','1.0',4171431,'Screening for malignant neoplasm of lung','Measurement','SNOMED','Procedure','S','275981009',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (2617206,'Prostate cancer screening; prostate specific antigen test (psa)','Measurement','HCPCS','HCPCS',NULL,'G0103',DATE '2000-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',40481096,'Screening for malignant neoplasm of prostate','Measurement','SNOMED','Procedure','S','444822002',DATE '2010-07-31',DATE '2099-12-31',NULL),
  (1314507,'Patient has metastatic disease at diagnosis (Deprecated)','Observation','HCPCS','HCPCS','S','G9834',DATE '2017-01-01',DATE '2020-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (1314515,'Patient has metastatic disease at diagnosis','Observation','HCPCS','HCPCS','S','G9842',DATE '2017-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (1314511,'Patient has metastatic disease at diagnosis','Observation','HCPCS','HCPCS','S','G9838',DATE '2017-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (2618008,'Oncology; disease status; invasive female breast cancer (does not include ductal carcinoma in situ); adenocarcinoma as predominant cell type; stage iiia-iiib; and not t3, n1, m0; and er and pr negative; with no evidence of disease progression, recurren...','Observation','HCPCS','HCPCS',NULL,'G9074',DATE '2006-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634191,'Stage 3','Measurement','Cancer Modifier','Staging/Grading','S','Stage-3',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (2617223,'Colorectal cancer screening; colonoscopy on individual not meeting criteria for high risk','Measurement','HCPCS','HCPCS',NULL,'G0121',DATE '1998-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4175226,'Screening for malignant neoplasm of colon','Measurement','SNOMED','Procedure','S','275978004',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (2617208,'Colorectal cancer screening; colonoscopy on individual at high risk','Measurement','HCPCS','HCPCS',NULL,'G0105',DATE '1998-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4175226,'Screening for malignant neoplasm of colon','Measurement','SNOMED','Procedure','S','275978004',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (2618008,'Oncology; disease status; invasive female breast cancer (does not include ductal carcinoma in situ); adenocarcinoma as predominant cell type; stage iiia-iiib; and not t3, n1, m0; and er and pr negative; with no evidence of disease progression, recurren...','Observation','HCPCS','HCPCS',NULL,'G9074',DATE '2006-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',3655521,'Adenocarcinoma of breast','Condition','SNOMED','Disorder','S','865954003',DATE '2020-07-31',DATE '2099-12-31',NULL),
  (2618000,'Oncology; disease status; limited to non-small cell lung cancer; stage iii b- iv at diagnosis, metastatic, locally recurrent, or progressive (for use in a medicare-approved demonstration project)','Observation','HCPCS','HCPCS',NULL,'G9066',DATE '2006-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634568,'Advanced Stage','Measurement','Cancer Modifier','Staging/Grading','S','advanced',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35804141,'Neoadjuvant therapy','Procedure','HemOnc','Context',NULL,'5250',DATE '2019-05-27',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',37159508,'Neoadjuvant antineoplastic therapy','Procedure','SNOMED','Procedure','S','400001000004103',DATE '2023-01-31',DATE '2099-12-31',NULL),
  (36568267,'Merkel cell carcinoma of skin of lower limb and hip','Condition','ICDO3','ICDO Condition',NULL,'8247/3-C44.7',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1244349,'Primary Merkel cell carcinoma of skin of lower limb','Condition','SNOMED','Disorder','S','1287333007',DATE '2023-09-01',DATE '2099-12-31',NULL),
  (36535025,'Liposarcoma, NOS, of connective, Subcutaneous and other soft tissues, NOS','Condition','ICDO3','ICDO Condition',NULL,'8850/3-C49.9',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',40490459,'Liposarcoma of connective tissue','Condition','SNOMED','Disorder','S','448554008',DATE '2011-07-31',DATE '2099-12-31',NULL),
  (44505317,'Lobular carcinoma in situ, NOS, of breast, NOS','Condition','ICDO3','ICDO Condition',NULL,'8520/2-C50.9',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (44497913,'Ureter','Spec Anatomic Site','ICDO3','ICDO Topography',NULL,'C66.9',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4337115,'Ureteric structure','Spec Anatomic Site','SNOMED','Body Structure','S','87953007',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (36518614,'B lymphoblastic leukemia/lymphoma with t(1;19)(q23;p13.3); E2A-PBX1 (TCF3-PBX1) of bone marrow','Condition','ICDO3','ICDO Condition',NULL,'9818/3-C42.1',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',35977013,'t(1;19)(q23;p13.3) measurement','Measurement','OMOP Genomic','Structural Variant','S','OMOP4997578',DATE '2024-02-26',DATE '2099-12-31',NULL),
  (36402342,'Verrucous carcinoma in situ','Observation','ICDO3','ICDO Histology',NULL,'8051/2',DATE '2015-09-18',DATE '2020-06-29','D','Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (36551184,'Acute myeloid leukemia with inv(3)(q21;q26.2) or t(3;3)(q21;q26.2); RPN1-EVI1 of bone marrow','Condition','ICDO3','ICDO Condition',NULL,'9869/3-C42.1',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36017895,'t(3;3)(q21;q26.2) measurement','Measurement','OMOP Genomic','Structural Variant','S','OMOP5043015',DATE '2024-02-26',DATE '2099-12-31',NULL),
  (44501138,'Ductal carcinoma in situ, solid type of breast, NOS','Condition','ICDO3','ICDO Condition',NULL,'8230/2-C50.9',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (44504751,'Endometrial stromal sarcoma, NOS, of endometrium','Condition','ICDO3','ICDO Condition',NULL,'8930/3-C54.1',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',37166810,'Primary malignant stromal sarcoma of endometrium','Condition','SNOMED','Disorder','S','1260116000',DATE '2022-12-31',DATE '2099-12-31',NULL),
  (36518614,'B lymphoblastic leukemia/lymphoma with t(1;19)(q23;p13.3); E2A-PBX1 (TCF3-PBX1) of bone marrow','Condition','ICDO3','ICDO Condition',NULL,'9818/3-C42.1',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',35977112,'TCF3::PBX1 gene fusion measurement','Measurement','OMOP Genomic','Gene Variant','S','OMOP4997677',DATE '2021-03-28',DATE '2099-12-31',NULL),
  (44499590,'Malignant lymphoma, small B lymphocytic, NOS, of bone marrow','Condition','ICDO3','ICDO Condition',NULL,'9670/3-C42.1',DATE '2015-09-18',DATE '2020-06-29','U','Maps to','skos:exactMatch','1.0',4119130,'Malignant lymphoma - small lymphocytic','Condition','SNOMED','Disorder','S','302841002',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (36564047,'B lymphoblastic leukemia/lymphoma with t(12;21)(p13;q22); TEL-AML1 (ETV6-RUNX1) of bone marrow','Condition','ICDO3','ICDO Condition',NULL,'9814/3-C42.1',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',35976981,'ETV6::RUNX1 gene fusion measurement','Measurement','OMOP Genomic','Gene Variant','S','OMOP4997546',DATE '2021-03-28',DATE '2099-12-31',NULL),
  (44497877,'Ovary','Spec Anatomic Site','ICDO3','ICDO Topography',NULL,'C56.9',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4049448,'Ovarian structure','Spec Anatomic Site','SNOMED','Body Structure','S','15497006',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (36402977,'Melanoma in situ in junctional nevus (C44._)','Observation','ICDO3','ICDO Histology',NULL,'8740/2',DATE '2015-09-18',DATE '2020-06-29','D','Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (36568168,'Melanoma in situ of skin of lower limb and hip','Condition','ICDO3','ICDO Condition',NULL,'8720/2-C44.7',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (36402913,'Meningiothelial meningioma, malignant (C70._)','Observation','ICDO3','ICDO Histology',NULL,'9531/3',DATE '2015-09-18',DATE '2020-06-29','D','Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (36402914,'Paget disease (in situ), extramammary (except Paget disease of bone) (C50._)','Observation','ICDO3','ICDO Histology',NULL,'8542/2',DATE '2015-09-18',DATE '2020-06-29','D','Maps to','skos:exactMatch','1.0',1635571,'AJCC/UICC Tis(Paget) Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis(Paget)',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (36402960,'Paget disease in situ and intraductal carcinoma (C50._)','Observation','ICDO3','ICDO Histology',NULL,'8543/2',DATE '2015-09-18',DATE '2020-06-29','D','Maps to','skos:exactMatch','1.0',1635571,'AJCC/UICC Tis(Paget) Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis(Paget)',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (36402891,'Paget disease, mammary in situ (C50._)','Observation','ICDO3','ICDO Histology',NULL,'8540/2',DATE '2015-09-18',DATE '2020-06-29','D','Maps to','skos:exactMatch','1.0',42514199,'Neoplasm defined only by histology: Paget disease, mammary in situ (C50._)','Condition','ICDO3','ICDO Condition','S','8540/2-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL),
  (36402891,'Paget disease, mammary in situ (C50._)','Observation','ICDO3','ICDO Histology',NULL,'8540/2',DATE '2015-09-18',DATE '2020-06-29','D','Maps to','skos:exactMatch','1.0',1635571,'AJCC/UICC Tis(Paget) Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis(Paget)',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (44499416,'Acute myeloid leukemia with t(6;9)(p23;q34); DEK-NUP214 of bone marrow','Condition','ICDO3','ICDO Condition',NULL,'9865/3-C42.1',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',35976968,'DEK::NUP214 gene fusion measurement','Measurement','OMOP Genomic','Gene Variant','S','OMOP4997533',DATE '2021-03-28',DATE '2099-12-31',NULL),
  (711580,'Adenocarcinoma, metastatic, NOS, of breast, NOS','Condition','ICDO3','ICDO Condition',NULL,'8140/6-C50.9',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',3655521,'Adenocarcinoma of breast','Condition','SNOMED','Disorder','S','865954003',DATE '2020-07-31',DATE '2099-12-31',NULL),
  (44504293,'Adenocarcinoma in situ, NOS, of endocervix','Condition','ICDO3','ICDO Condition',NULL,'8140/2-C53.0',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (36551184,'Acute myeloid leukemia with inv(3)(q21;q26.2) or t(3;3)(q21;q26.2); RPN1-EVI1 of bone marrow','Condition','ICDO3','ICDO Condition',NULL,'9869/3-C42.1',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',19644373,'MECOM::RPN1 gene fusion measurement','Measurement','OMOP Genomic','Gene Variant','S','OMOP5395046',DATE '2024-02-26',DATE '2099-12-31',NULL),
  (36402945,'Adenocarcinoma in situ, intestinal type (C16._)','Observation','ICDO3','ICDO Histology',NULL,'8144/2',DATE '2015-09-18',DATE '2020-06-29','D','Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (36558952,'Adenocarcinoma in situ, NOS, of esophagus, NOS','Condition','ICDO3','ICDO Condition',NULL,'8140/2-C15.9',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (36519474,'Precursor B-cell lymphoblastic lymphoma of bone marrow','Condition','ICDO3','ICDO Condition',NULL,'9728/3-C42.1',DATE '2015-09-18',DATE '2020-06-29','U','Maps to','skos:exactMatch','1.0',42514074,'Neoplasm defined only by histology: Precursor B-cell lymphoblastic lymphoma','Condition','ICDO3','ICDO Condition','S','9728/3-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL),
  (44504696,'Precursor T-cell lymphoblastic leukemia of bone marrow','Condition','ICDO3','ICDO Condition',NULL,'9837/3-C42.1',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1244411,'Early T-precursor lymphoblastic leukemia/lymphoma','Condition','SNOMED','Disorder','S','1287593005',DATE '2023-10-01',DATE '2099-12-31',NULL),
  (36538686,'Precursor T-cell lymphoblastic lymphoma of bone marrow','Condition','ICDO3','ICDO Condition',NULL,'9729/3-C42.1',DATE '2015-09-18',DATE '2020-06-29','U','Maps to','skos:exactMatch','1.0',1244411,'Early T-precursor lymphoblastic leukemia/lymphoma','Condition','SNOMED','Disorder','S','1287593005',DATE '2023-10-01',DATE '2099-12-31',NULL),
  (36546393,'Ewing sarcoma of connective, Subcutaneous and other soft tissues, NOS','Condition','ICDO3','ICDO Condition',NULL,'9364/3-C49.9',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',40487487,'Ewing''s sarcoma of soft tissue','Condition','SNOMED','Disorder','S','447951009',DATE '2011-07-31',DATE '2099-12-31',NULL),
  (36526739,'Ewing sarcoma of connective, Subcutaneous and other soft tissues, NOS','Condition','ICDO3','ICDO Condition',NULL,'9260/3-C49.9',DATE '2015-09-18',DATE '2020-06-29','U','Maps to','skos:exactMatch','1.0',40487487,'Ewing''s sarcoma of soft tissue','Condition','SNOMED','Disorder','S','447951009',DATE '2011-07-31',DATE '2099-12-31',NULL),
  (711580,'Adenocarcinoma, metastatic, NOS, of breast, NOS','Condition','ICDO3','ICDO Condition',NULL,'8140/6-C50.9',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (36564047,'B lymphoblastic leukemia/lymphoma with t(12;21)(p13;q22); TEL-AML1 (ETV6-RUNX1) of bone marrow','Condition','ICDO3','ICDO Condition',NULL,'9814/3-C42.1',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',35977015,'t(12;21)(p13;q22) measurement','Measurement','OMOP Genomic','Structural Variant','S','OMOP4997580',DATE '2024-02-26',DATE '2099-12-31',NULL),
  (44503877,'Carcinoma in situ, NOS, of ampulla of Vater','Condition','ICDO3','ICDO Condition',NULL,'8010/2-C24.1',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (44500015,'Combined hepatocellular carcinoma and cholangiocarcinoma of liver','Condition','ICDO3','ICDO Condition',NULL,'8180/3-C22.0',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4208660,'Cholangiocarcinoma of biliary tract','Condition','SNOMED','Disorder','S','312104005',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (44500015,'Combined hepatocellular carcinoma and cholangiocarcinoma of liver','Condition','ICDO3','ICDO Condition',NULL,'8180/3-C22.0',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4001171,'Liver cell carcinoma','Condition','SNOMED','Disorder','S','109841003',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (44504348,'Carcinoma in situ, NOS, of ascending colon','Condition','ICDO3','ICDO Condition',NULL,'8010/2-C18.2',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (44503982,'Carcinoma in situ, NOS, of base of tongue, NOS','Condition','ICDO3','ICDO Condition',NULL,'8010/2-C01.9',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (44505746,'Carcinoma in situ, NOS, of bladder neck','Condition','ICDO3','ICDO Condition',NULL,'8010/2-C67.5',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (36402791,'B lymphoblastic leukemia/lymphoma with t(9;22)(q34;q11.2); BCR-ABL1 of blood','Condition','ICDO3','ICDO Condition',NULL,'9812/3-C42.0',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:broadMatch','1.0',35977026,'t(9;22)(q34;q11.2) measurement','Measurement','OMOP Genomic','Structural Variant','S','OMOP4997591',DATE '2024-02-26',DATE '2099-12-31',NULL),
  (44505764,'Carcinoma in situ, NOS, of bladder, NOS','Condition','ICDO3','ICDO Condition',NULL,'8010/2-C67.9',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (44505309,'Carcinoma in situ, NOS, of breast, NOS','Condition','ICDO3','ICDO Condition',NULL,'8010/2-C50.9',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (44504167,'Carcinoma in situ, NOS, of cardia, NOS','Condition','ICDO3','ICDO Condition',NULL,'8010/2-C16.0',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (44499673,'Carcinoma in situ, NOS, of dome of bladder','Condition','ICDO3','ICDO Condition',NULL,'8010/2-C67.1',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (36402791,'B lymphoblastic leukemia/lymphoma with t(9;22)(q34;q11.2); BCR-ABL1 of blood','Condition','ICDO3','ICDO Condition',NULL,'9812/3-C42.0',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',35976955,'BCR::ABL1 gene fusion measurement','Measurement','OMOP Genomic','Gene Variant','S','OMOP4997520',DATE '2021-03-28',DATE '2099-12-31',NULL),
  (44497911,'Renal pelvis','Spec Anatomic Site','ICDO3','ICDO Topography',NULL,'C65.9',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4094242,'Renal pelvis structure','Spec Anatomic Site','SNOMED','Body Structure','S','25990002',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (44505350,'Carcinoma in situ, NOS, of fallopian tube','Condition','ICDO3','ICDO Condition',NULL,'8010/2-C57.0',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (44504894,'Carcinoma in situ, NOS, of glottis','Condition','ICDO3','ICDO Condition',NULL,'8010/2-C32.0',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (44499861,'B lymphoblastic leukemia/lymphoma with t(9;22)(q34;q11.2); BCR-ABL1 of bone marrow','Condition','ICDO3','ICDO Condition',NULL,'9812/3-C42.1',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',35976955,'BCR::ABL1 gene fusion measurement','Measurement','OMOP Genomic','Gene Variant','S','OMOP4997520',DATE '2021-03-28',DATE '2099-12-31',NULL),
  (44505729,'Carcinoma in situ, NOS, of lateral wall of bladder','Condition','ICDO3','ICDO Condition',NULL,'8010/2-C67.2',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (44504136,'Carcinoma in situ, NOS, of lower third of esophagus','Condition','ICDO3','ICDO Condition',NULL,'8010/2-C15.5',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (36556911,'Sarcoma, NOS, of connective, Subcutaneous and other soft tissues, NOS','Condition','ICDO3','ICDO Condition',NULL,'8800/3-C49.9',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',40486638,'Sarcoma of connective tissue','Condition','SNOMED','Disorder','S','449293008',DATE '2011-07-31',DATE '2099-12-31',NULL),
  (36402989,'Sebaceous adenocarcinoma in situ (C44._)','Observation','ICDO3','ICDO Histology',NULL,'8410/2',DATE '2015-09-18',DATE '2020-06-29','D','Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (44499861,'B lymphoblastic leukemia/lymphoma with t(9;22)(q34;q11.2); BCR-ABL1 of bone marrow','Condition','ICDO3','ICDO Condition',NULL,'9812/3-C42.1',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:broadMatch','1.0',35977026,'t(9;22)(q34;q11.2) measurement','Measurement','OMOP Genomic','Structural Variant','S','OMOP4997591',DATE '2024-02-26',DATE '2099-12-31',NULL),
  (44505000,'Carcinoma in situ, NOS, of lung, NOS','Condition','ICDO3','ICDO Condition',NULL,'8010/2-C34.9',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (44504130,'Carcinoma in situ, NOS, of middle third of esophagus','Condition','ICDO3','ICDO Condition',NULL,'8010/2-C15.4',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (36402259,'Serrated adenoma, in situ','Observation','ICDO3','ICDO Histology',NULL,'8213/2',DATE '2015-09-18',DATE '2020-06-29','D','Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (44504711,'Acute myeloid leukemia, 11q23 abnormalities of bone marrow','Condition','ICDO3','ICDO Condition',NULL,'9897/3-C42.1',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:closeMatch','1.0',608277,'Acute myeloid leukemia with 11q23 abnormality','Condition','SNOMED','Disorder','S','1157157006',DATE '2021-07-31',DATE '2099-12-31',NULL),
  (44503159,'Intraductal carcinoma and lobular carcinoma in situ of breast, NOS','Condition','ICDO3','ICDO Condition',NULL,'8522/2-C50.9',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (44504701,'Acute promyelocytic leukemia, t(15;17)(q22;q11-12) of bone marrow','Condition','ICDO3','ICDO Condition',NULL,'9866/3-C42.1',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',19642260,'t(15;17)(q22;q22) measurement','Measurement','OMOP Genomic','Structural Variant','S','OMOP5407508',DATE '2024-02-26',DATE '2099-12-31',NULL),
  (44504418,'Carcinoma in situ, NOS, of rectum, NOS','Condition','ICDO3','ICDO Condition',NULL,'8010/2-C20.9',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (44505752,'Carcinoma in situ, NOS, of ureteric orifice','Condition','ICDO3','ICDO Condition',NULL,'8010/2-C67.6',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (44504723,'Myelodysplastic syndrome with ring sideroblasts and single lineage dysplasia of bone marrow','Condition','ICDO3','ICDO Condition',NULL,'9982/3-C42.1',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4003186,'Myelodysplastic syndrome with ring sideroblasts and single lineage dysplasia','Condition','SNOMED','Disorder','S','109998009',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (44498230,'Skin of lower limb and hip','Spec Anatomic Site','ICDO3','ICDO Topography',NULL,'C44.7',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4159862,'Skin structure of lower limb','Spec Anatomic Site','SNOMED','Body Structure','S','371304004',DATE '2002-07-31',DATE '2099-12-31',NULL),
  (44504701,'Acute promyelocytic leukemia, t(15;17)(q22;q11-12) of bone marrow','Condition','ICDO3','ICDO Condition',NULL,'9866/3-C42.1',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',35977085,'PML::RARA gene fusion measurement','Measurement','OMOP Genomic','Gene Variant','S','OMOP4997650',DATE '2021-03-28',DATE '2099-12-31',NULL),
  (44505775,'Carcinoma in situ, NOS, of urethra','Condition','ICDO3','ICDO Condition',NULL,'8010/2-C68.0',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (42514089,'Neoplasm defined only by histology: Papillary carcinoma, metastatic site','Condition','ICDO3','ICDO Condition','S','8343/2-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',42513030,'Neoplasm defined only by histology: Papillary carcinoma, NOS','Condition','ICDO3','ICDO Condition','S','8050/3-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL),
  (42514089,'Neoplasm defined only by histology: Papillary carcinoma, metastatic site','Condition','ICDO3','ICDO Condition','S','8343/2-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (42514416,'Neoplasm defined only by topography: Connective, Subcutaneous and other soft tissues, NOS','Condition','ICDO3','ICDO Condition',NULL,'NULL-C49.9',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',373718,'Neoplasm of connective tissues','Condition','SNOMED','Disorder','S','126598008',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (44498215,'Bone, NOS','Spec Anatomic Site','ICDO3','ICDO Topography',NULL,'C41.9',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4154333,'Bone structure','Spec Anatomic Site','SNOMED','Body Structure','S','272673000',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (711532,'Adenocarcinoma, metastatic, NOS, of stomach, NOS','Condition','ICDO3','ICDO Condition',NULL,'8140/6-C16.9',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4248802,'Adenocarcinoma of stomach','Condition','SNOMED','Disorder','S','408647009',DATE '2004-01-31',DATE '2099-12-31',NULL),
  (44504704,'Acute myeloid leukemia with abnormal marrow eosinophils of bone marrow','Condition','ICDO3','ICDO Condition',NULL,'9871/3-C42.1',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',35976960,'CBFB::MYH11 gene fusion measurement','Measurement','OMOP Genomic','Gene Variant','S','OMOP4997525',DATE '2021-03-28',DATE '2099-12-31',NULL),
  (711532,'Adenocarcinoma, metastatic, NOS, of stomach, NOS','Condition','ICDO3','ICDO Condition',NULL,'8140/6-C16.9',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (44497909,'Kidney, NOS','Spec Anatomic Site','ICDO3','ICDO Topography',NULL,'C64.9',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4271678,'Kidney structure','Spec Anatomic Site','SNOMED','Body Structure','S','64033007',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (36544988,'Leiomyosarcoma, NOS, of connective, Subcutaneous and other soft tissues, NOS','Condition','ICDO3','ICDO Condition',NULL,'8890/3-C49.9',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',40486588,'Leiomyosarcoma of connective tissue','Condition','SNOMED','Disorder','S','447804006',DATE '2011-07-31',DATE '2099-12-31',NULL),
  (44504307,'Squamous cell carcinoma in situ, NOS, of cervix uteri','Condition','ICDO3','ICDO Condition',NULL,'8070/2-C53.9',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (44502082,'Squamous cell carcinoma in situ, NOS, of esophagus, NOS','Condition','ICDO3','ICDO Condition',NULL,'8070/2-C15.9',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (44499739,'Cholangiocarcinoma of extrahepatic bile duct','Condition','ICDO3','ICDO Condition',NULL,'8160/3-C24.0',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',606360,'Primary cholangiocarcinoma of extrahepatic bile duct','Condition','SNOMED','Disorder','S','1144891007',DATE '2021-07-31',DATE '2099-12-31',NULL),
  (44499416,'Acute myeloid leukemia with t(6;9)(p23;q34); DEK-NUP214 of bone marrow','Condition','ICDO3','ICDO Condition',NULL,'9865/3-C42.1',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36017896,'t(6;9)(p23;q34) measurement','Measurement','OMOP Genomic','Structural Variant','S','OMOP5043047',DATE '2024-02-26',DATE '2099-12-31',NULL),
  (711562,'Squamous cell carcinoma, metastatic, NOS, of skin of scalp and neck','Condition','ICDO3','ICDO Condition',NULL,'8070/6-C44.4',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',37396745,'Squamous cell carcinoma of head and neck','Condition','SNOMED','Disorder','S','716659002',DATE '2016-07-31',DATE '2099-12-31',NULL),
  (711562,'Squamous cell carcinoma, metastatic, NOS, of skin of scalp and neck','Condition','ICDO3','ICDO Condition',NULL,'8070/6-C44.4',DATE '2015-09-18',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (36402946,'Angiomatous meningioma, malignant (C70._)','Observation','ICDO3','ICDO Histology',NULL,'9534/3',DATE '2015-09-18',DATE '2020-06-29','D','Maps to','skos:exactMatch','1.0',1634530,'AJCC/UICC Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45882494,'Stage IA2','Meas Value','LOINC','Answer','S','LA4319-5',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634275,'Stage 1A2','Measurement','Cancer Modifier','Staging/Grading','S','Stage-1A2',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45876317,'Stage IB','Meas Value','LOINC','Answer','S','LA3662-9',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635041,'Stage 1B','Measurement','Cancer Modifier','Staging/Grading','S','Stage-1B',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45881607,'Stage IB1','Meas Value','LOINC','Answer','S','LA4318-7',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635378,'Stage 1B1','Measurement','Cancer Modifier','Staging/Grading','S','Stage-1B1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45881606,'Stage IB2','Meas Value','LOINC','Answer','S','LA4317-9',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634558,'Stage 1B2','Measurement','Cancer Modifier','Staging/Grading','S','Stage-1B2',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45876323,'MX','Meas Value','LOINC','Answer','S','LA4544-8',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633547,'AJCC/UICC MX Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-MX',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45878652,'Stage IC','Meas Value','LOINC','Answer','S','LA4316-1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634567,'Stage 1C','Measurement','Cancer Modifier','Staging/Grading','S','Stage-1C',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237073,'Stage IE','Meas Value','LOINC','Answer','S','LA21791-1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635593,'Stage 1E','Measurement','Cancer Modifier','Staging/Grading','S','Stage-1E',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45880979,'Stage II','Meas Value','LOINC','Answer','S','LA3661-1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635131,'Stage 2','Measurement','Cancer Modifier','Staging/Grading','S','Stage-2',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45876316,'Stage IIA','Meas Value','LOINC','Answer','S','LA3660-3',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634370,'Stage 2A','Measurement','Cancer Modifier','Staging/Grading','S','Stage-2A',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45878651,'Occult','Meas Value','LOINC','Answer','S','LA4744-4',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635594,'Occult Stage','Measurement','Cancer Modifier','Staging/Grading','S','Occult',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45884289,'NX','Meas Value','LOINC','Answer','S','LA4745-1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633885,'AJCC/UICC NX Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-NX',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237075,'M1e','Meas Value','LOINC','Answer','S','LA21878-6',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:closeMatch','1.0',1635142,'AJCC/UICC M1 Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-M1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237999,'Stage IIA1','Meas Value','LOINC','Answer','S','LA21844-8',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634086,'Stage 2A1','Measurement','Cancer Modifier','Staging/Grading','S','Stage-2A1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45881617,'N0','Meas Value','LOINC','Answer','S','LA4368-2',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633440,'AJCC/UICC N0 Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-N0',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237067,'M1d','Meas Value','LOINC','Answer','S','LA21877-8',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634064,'AJCC/UICC M1d Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-M1d',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45878386,'M1C','Meas Value','LOINC','Answer','S','LA4625-5',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635519,'AJCC/UICC M1c Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-M1c',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237077,'N0a','Meas Value','LOINC','Answer','S','LA21818-2',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633621,'AJCC/UICC N0a Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-N0a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237070,'N0b','Meas Value','LOINC','Answer','S','LA21819-0',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635244,'AJCC/UICC N0b Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-N0b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237474,'P1a','Meas Value','LOINC','Answer','S','LA21835-6',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634312,'AJCC/UICC pathological M1a Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-M1a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237066,'P1b','Meas Value','LOINC','Answer','S','LA21836-4',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634093,'AJCC/UICC pathological M1b Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-M1b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46238003,'P1c','Meas Value','LOINC','Answer','S','LA21837-2',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635338,'AJCC/UICC pathological M1c Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-M1c',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237475,'P1d','Meas Value','LOINC','Answer','S','LA21838-0',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635373,'AJCC/UICC pathological M1d Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-M1d',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237078,'P1e','Meas Value','LOINC','Answer','S','LA21839-8',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635505,'AJCC/UICC pathological M1 Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-M1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237083,'N0I-','Meas Value','LOINC','Answer','S','LA21814-1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:broadMatch','1.0',1633440,'AJCC/UICC N0 Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-N0',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237069,'N0I+','Meas Value','LOINC','Answer','S','LA21815-8',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635600,'AJCC/UICC N0(i+) Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-N0(i+)',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237471,'N0M-','Meas Value','LOINC','Answer','S','LA21816-6',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:broadMatch','1.0',1633440,'AJCC/UICC N0 Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-N0',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237068,'Stage IVA2','Meas Value','LOINC','Answer','S','LA21850-5',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633910,'Stage 4A2','Measurement','Cancer Modifier','Staging/Grading','S','Stage-4A2',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45881618,'M1B','Meas Value','LOINC','Answer','S','LA4626-3',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634463,'AJCC/UICC M1b Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-M1b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45882500,'M1A','Meas Value','LOINC','Answer','S','LA4627-1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635100,'AJCC/UICC M1a Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-M1a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237995,'P1m','Meas Value','LOINC','Answer','S','LA21840-6',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635505,'AJCC/UICC pathological M1 Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-M1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237996,'P1m1','Meas Value','LOINC','Answer','S','LA21841-4',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:closeMatch','1.0',1635505,'AJCC/UICC pathological M1 Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-M1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237487,'N0M+','Meas Value','LOINC','Answer','S','LA21817-4',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633938,'AJCC/UICC N0(mol+) Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-N0(mol+)',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45881613,'N1','Meas Value','LOINC','Answer','S','LA4537-2',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634434,'AJCC/UICC N1 Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-N1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45880982,'N1a','Meas Value','LOINC','Answer','S','LA4264-3',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633735,'AJCC/UICC N1a Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-N1a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45881615,'N1b','Meas Value','LOINC','Answer','S','LA4535-6',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635130,'AJCC/UICC N1b Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-N1b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237062,'N1c','Meas Value','LOINC','Answer','S','LA21866-1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634620,'AJCC/UICC N1c Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-N1c',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45876322,'M1','Meas Value','LOINC','Answer','S','LA4628-9',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635142,'AJCC/UICC M1 Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-M1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237080,'M0I+','Meas Value','LOINC','Answer','S','LA21876-0',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634197,'AJCC/UICC M0(i+) Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-M0(i+)',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237489,'M0+','Meas Value','LOINC','Answer','S','LA21875-2',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:broadMatch','1.0',1635624,'AJCC/UICC M0 Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-M0',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237063,'N1m','Meas Value','LOINC','Answer','S','LA21821-6',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:closeMatch','1.0',1634434,'AJCC/UICC N1 Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-N1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237472,'N1mi','Meas Value','LOINC','Answer','S','LA21822-4',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635335,'AJCC/UICC N1mi Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-N1mi',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45881614,'N2','Meas Value','LOINC','Answer','S','LA4534-9',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634119,'AJCC/UICC N2 Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-N2',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45882498,'N2a','Meas Value','LOINC','Answer','S','LA4533-1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635644,'AJCC/UICC N2a Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-N2a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (36310598,'Metastatic cancer','Meas Value','LOINC','Answer','S','LA28289-9',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (45880111,'N2b','Meas Value','LOINC','Answer','S','LA4517-4',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634134,'AJCC/UICC N2b Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-N2b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45876321,'N2c','Meas Value','LOINC','Answer','S','LA4531-5',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634080,'AJCC/UICC N2c Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-N2c',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45882499,'N3','Meas Value','LOINC','Answer','S','LA4545-5',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635320,'AJCC/UICC N3 Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-N3',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45884288,'N3a','Meas Value','LOINC','Answer','S','LA4529-9',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635590,'AJCC/UICC N3a Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-N3a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45878649,'N3b','Meas Value','LOINC','Answer','S','LA4528-1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633422,'AJCC/UICC N3b Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-N3b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45878650,'M0','Meas Value','LOINC','Answer','S','LA4629-7',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635624,'AJCC/UICC M0 Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-M0',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45881616,'N3c','Meas Value','LOINC','Answer','S','LA4527-3',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634735,'AJCC/UICC N3c Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-N3c',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237477,'N4','Meas Value','LOINC','Answer','S','LA21874-5',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635445,'AJCC/UICC N4 Category','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-N4',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45876315,'Stage IVB','Meas Value','LOINC','Answer','S','LA3649-6',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634499,'Stage 4B','Measurement','Cancer Modifier','Staging/Grading','S','Stage-4B',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237478,'Stage IIA2','Meas Value','LOINC','Answer','S','LA21845-5',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634632,'Stage 2A2','Measurement','Cancer Modifier','Staging/Grading','S','Stage-2A2',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45880112,'Stage T1B2','Meas Value','LOINC','Answer','S','LA4484-7',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634558,'Stage 1B2','Measurement','Cancer Modifier','Staging/Grading','S','Stage-1B2',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45880113,'Stage T1B1','Meas Value','LOINC','Answer','S','LA4485-4',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635378,'Stage 1B1','Measurement','Cancer Modifier','Staging/Grading','S','Stage-1B1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45882501,'Stage T1A2','Meas Value','LOINC','Answer','S','LA4284-1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634275,'Stage 1A2','Measurement','Cancer Modifier','Staging/Grading','S','Stage-1A2',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45881619,'Stage T1A1','Meas Value','LOINC','Answer','S','LA4401-1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633843,'Stage 1A1','Measurement','Cancer Modifier','Staging/Grading','S','Stage-1A1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45882497,'Stage IIB','Meas Value','LOINC','Answer','S','LA3659-5',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634764,'Stage 2B','Measurement','Cancer Modifier','Staging/Grading','S','Stage-2B',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45878382,'Stage IIC','Meas Value','LOINC','Answer','S','LA3658-7',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633907,'Stage 2C','Measurement','Cancer Modifier','Staging/Grading','S','Stage-2C',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45876314,'Stage IVC','Meas Value','LOINC','Answer','S','LA4314-6',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634648,'Stage 4C','Measurement','Cancer Modifier','Staging/Grading','S','Stage-4C',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237084,'Stage IIE','Meas Value','LOINC','Answer','S','LA21794-5',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635388,'Stage 2E','Measurement','Cancer Modifier','Staging/Grading','S','Stage-2E',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45878643,'Stage III','Meas Value','LOINC','Answer','S','LA3657-9',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634191,'Stage 3','Measurement','Cancer Modifier','Staging/Grading','S','Stage-3',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45880978,'Stage IIIA','Meas Value','LOINC','Answer','S','LA3656-1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633965,'Stage 3A','Measurement','Cancer Modifier','Staging/Grading','S','Stage-3A',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45884285,'Stage IIIB','Meas Value','LOINC','Answer','S','LA3655-3',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634175,'Stage 3B','Measurement','Cancer Modifier','Staging/Grading','S','Stage-3B',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45881608,'Stage IIIC','Meas Value','LOINC','Answer','S','LA3654-6',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635305,'Stage 3C','Measurement','Cancer Modifier','Staging/Grading','S','Stage-3C',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237081,'Stage IIIC1','Meas Value','LOINC','Answer','S','LA21848-9',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634590,'Stage 3C1','Measurement','Cancer Modifier','Staging/Grading','S','Stage-3C1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237479,'Stage IIIC2','Meas Value','LOINC','Answer','S','LA21871-1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635612,'Stage 3C2','Measurement','Cancer Modifier','Staging/Grading','S','Stage-3C2',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45878395,'Stage IIIE','Meas Value','LOINC','Answer','S','LA3652-0',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633356,'Stage 3E','Measurement','Cancer Modifier','Staging/Grading','S','Stage-3E',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237998,'Stage IIIS','Meas Value','LOINC','Answer','S','LA21800-0',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635363,'Stage 3S','Measurement','Cancer Modifier','Staging/Grading','S','Stage-3S',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237085,'Stage IIS','Meas Value','LOINC','Answer','S','LA21847-1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634124,'Stage 2S','Measurement','Cancer Modifier','Staging/Grading','S','Stage-2S',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45884283,'Stage IS','Meas Value','LOINC','Answer','S','LA4315-3',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633633,'Stage 1S','Measurement','Cancer Modifier','Staging/Grading','S','Stage-1S',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45880109,'Stage IV','Meas Value','LOINC','Answer','S','LA3651-2',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633987,'Stage 4','Measurement','Cancer Modifier','Staging/Grading','S','Stage-4',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45884284,'Stage 0','Meas Value','LOINC','Answer','S','LA4323-7',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634946,'Stage 0','Measurement','Cancer Modifier','Staging/Grading','S','Stage-0',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45880108,'Stage IVA','Meas Value','LOINC','Answer','S','LA3650-4',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635021,'Stage 4A','Measurement','Cancer Modifier','Staging/Grading','S','Stage-4A',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45881605,'Stage 0A','Meas Value','LOINC','Answer','S','LA4322-9',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634242,'Stage 0A','Measurement','Cancer Modifier','Staging/Grading','S','Stage-0A',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45882496,'Stage 0is','Meas Value','LOINC','Answer','S','LA4321-1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635657,'Stage 0IS','Measurement','Cancer Modifier','Staging/Grading','S','Stage-0IS',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46237488,'Stage 3C1','Meas Value','LOINC','Answer','S','LA21795-2',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634590,'Stage 3C1','Measurement','Cancer Modifier','Staging/Grading','S','Stage-3C1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (46238004,'Stage 3C2','Meas Value','LOINC','Answer','S','LA21796-0',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635612,'Stage 3C2','Measurement','Cancer Modifier','Staging/Grading','S','Stage-3C2',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45880980,'Stage I','Meas Value','LOINC','Answer','S','LA3664-5',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635838,'Stage 1','Measurement','Cancer Modifier','Staging/Grading','S','Stage-1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45878383,'Stage IA','Meas Value','LOINC','Answer','S','LA3663-7',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633544,'Stage 1A','Measurement','Cancer Modifier','Staging/Grading','S','Stage-1A',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (45882495,'Stage IA1','Meas Value','LOINC','Answer','S','LA4320-3',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633843,'Stage 1A1','Measurement','Cancer Modifier','Staging/Grading','S','Stage-1A1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919454,'cT4','Meas Value','NAACCR','NAACCR Value','S','940@c4',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635558,'AJCC/UICC clinical T4 Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T4',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919491,'cT4b','Meas Value','NAACCR','NAACCR Value','S','940@c4B',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634291,'AJCC/UICC clinical T4b Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T4b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919667,'cT4c','Meas Value','NAACCR','NAACCR Value','S','940@c4C',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634877,'AJCC/UICC clinical T4c Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T4c',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919544,'cT4d','Meas Value','NAACCR','NAACCR Value','S','940@c4D',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635368,'AJCC/UICC clinical T4d Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T4d',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919706,'cT4e','Meas Value','NAACCR','NAACCR Value','S','940@c4E',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634561,'AJCC/UICC clinical T4e Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T4e',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919629,'cTX','Meas Value','NAACCR','NAACCR Value','S','940@cX',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634460,'AJCC/UICC clinical TX Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-TX',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919480,'pM1','Meas Value','NAACCR','NAACCR Value','S','960@p1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635505,'AJCC/UICC pathological M1 Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-M1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919762,'pM1','Meas Value','NAACCR','NAACCR Value','S','900@p1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635505,'AJCC/UICC pathological M1 Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-M1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919199,'pM1a','Meas Value','NAACCR','NAACCR Value','S','900@p1A',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634312,'AJCC/UICC pathological M1a Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-M1a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919220,'pM1a','Meas Value','NAACCR','NAACCR Value','S','960@p1A',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634312,'AJCC/UICC pathological M1a Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-M1a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919375,'pM1b','Meas Value','NAACCR','NAACCR Value','S','960@p1B',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634093,'AJCC/UICC pathological M1b Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-M1b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919922,'pM1b','Meas Value','NAACCR','NAACCR Value','S','900@p1B',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634093,'AJCC/UICC pathological M1b Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-M1b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919269,'pM1c','Meas Value','NAACCR','NAACCR Value','S','960@p1C',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635338,'AJCC/UICC pathological M1c Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-M1c',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919359,'pM1c','Meas Value','NAACCR','NAACCR Value','S','900@p1C',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635338,'AJCC/UICC pathological M1c Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-M1c',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919431,'pM1d','Meas Value','NAACCR','NAACCR Value','S','960@p1D',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635373,'AJCC/UICC pathological M1d Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-M1d',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919520,'pM1d','Meas Value','NAACCR','NAACCR Value','S','900@p1D',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635373,'AJCC/UICC pathological M1d Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-M1d',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919183,'pM1e','Meas Value','NAACCR','NAACCR Value','S','900@p1E',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635505,'AJCC/UICC pathological M1 Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-M1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919430,'pM1e','Meas Value','NAACCR','NAACCR Value','S','960@p1E',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635505,'AJCC/UICC pathological M1 Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-M1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919637,'pN0','Meas Value','NAACCR','NAACCR Value','S','890@p0',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635597,'AJCC/UICC pathological N0 Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-N0',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919313,'pN0(i-)','Meas Value','NAACCR','NAACCR Value','S','890@p0I-',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635597,'AJCC/UICC pathological N0 Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-N0',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919328,'pN0(i+)','Meas Value','NAACCR','NAACCR Value','S','890@p0I+',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633503,'AJCC/UICC pathological N0(i+) Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-N0(i+)',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919164,'pN0a','Meas Value','NAACCR','NAACCR Value','S','890@p0A',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633923,'AJCC/UICC pathological N0a Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-N0a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919895,'pN0b','Meas Value','NAACCR','NAACCR Value','S','890@p0B',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633322,'AJCC/UICC pathological N0b Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-N0b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919273,'pN0m-','Meas Value','NAACCR','NAACCR Value','S','890@p0M-',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635597,'AJCC/UICC pathological N0 Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-N0',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919608,'pN0m+','Meas Value','NAACCR','NAACCR Value','S','890@p0M+',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633485,'AJCC/UICC pathological N0(mol+) Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-N0(mol+)',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919098,'pN1','Meas Value','NAACCR','NAACCR Value','S','890@p1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635613,'AJCC/UICC pathological N1 Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-N1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919353,'pN1a','Meas Value','NAACCR','NAACCR Value','S','890@p1A',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634206,'AJCC/UICC pathological N1a Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-N1a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919928,'pN1b','Meas Value','NAACCR','NAACCR Value','S','890@p1B',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633830,'AJCC/UICC pathological N1b Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-N1b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919053,'pN1c','Meas Value','NAACCR','NAACCR Value','S','890@p1C',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634589,'AJCC/UICC pathological N1c Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-N1c',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919402,'pN1mi','Meas Value','NAACCR','NAACCR Value','S','890@p1MI',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633502,'AJCC/UICC pathological N1mi Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-N1mi',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919125,'pN2','Meas Value','NAACCR','NAACCR Value','S','890@p2',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633864,'AJCC/UICC pathological N2 Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-N2',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919423,'pN2a','Meas Value','NAACCR','NAACCR Value','S','890@p2A',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633890,'AJCC/UICC pathological N2a Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-N2a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919152,'pN2b','Meas Value','NAACCR','NAACCR Value','S','890@p2B',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633460,'AJCC/UICC pathological N2b Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-N2b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919425,'pN2c','Meas Value','NAACCR','NAACCR Value','S','890@p2C',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633301,'AJCC/UICC pathological N2c Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-N2c',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919336,'pN3','Meas Value','NAACCR','NAACCR Value','S','890@p3',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635706,'AJCC/UICC pathological N3 Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-N3',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919844,'pN3a','Meas Value','NAACCR','NAACCR Value','S','890@p3A',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633401,'AJCC/UICC pathological N3a Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-N3a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919312,'pN3b','Meas Value','NAACCR','NAACCR Value','S','890@p3B',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633384,'AJCC/UICC pathological N3b Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-N3b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919877,'pN3c','Meas Value','NAACCR','NAACCR Value','S','890@p3C',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634305,'AJCC/UICC pathological N3c Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-N3c',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919119,'pN4','Meas Value','NAACCR','NAACCR Value','S','890@p4',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634916,'AJCC/UICC pathological N4 Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-N4',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919633,'pNX','Meas Value','NAACCR','NAACCR Value','S','890@pX',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635170,'AJCC/UICC pathological NX Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-NX',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919508,'pT0','Meas Value','NAACCR','NAACCR Value','S','880@p0',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635740,'AJCC/UICC pathological T0 Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T0',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919829,'pT1','Meas Value','NAACCR','NAACCR Value','S','880@p1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634004,'AJCC/UICC pathological T1 Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919756,'pT1a','Meas Value','NAACCR','NAACCR Value','S','880@p1A',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633722,'AJCC/UICC pathological T1a Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T1a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919524,'pT1a1','Meas Value','NAACCR','NAACCR Value','S','880@p1A1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634867,'AJCC/UICC pathological T1a1 Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T1a1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919377,'pT1a2','Meas Value','NAACCR','NAACCR Value','S','880@p1A2',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635881,'AJCC/UICC pathological T1a2 Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T1a2',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919186,'pT1b','Meas Value','NAACCR','NAACCR Value','S','880@p1B',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633693,'AJCC/UICC pathological T1b Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T1b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919616,'pT1b1','Meas Value','NAACCR','NAACCR Value','S','880@p1B1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635168,'AJCC/UICC pathological T1b1 Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T1b1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919348,'pT1b2','Meas Value','NAACCR','NAACCR Value','S','880@p1B2',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635120,'AJCC/UICC pathological T1b2 Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T1b2',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919136,'pT1c','Meas Value','NAACCR','NAACCR Value','S','880@p1C',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635017,'AJCC/UICC pathological T1c Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T1c',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919630,'pT1d','Meas Value','NAACCR','NAACCR Value','S','880@p1D',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634272,'AJCC/UICC pathological T1d Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T1d',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919492,'pT1mi','Meas Value','NAACCR','NAACCR Value','S','880@p1MI',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634428,'AJCC/UICC pathological T1mi Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T1mi',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919074,'pT2','Meas Value','NAACCR','NAACCR Value','S','880@p2',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633978,'AJCC/UICC pathological T2 Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T2',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919867,'pT2a','Meas Value','NAACCR','NAACCR Value','S','880@p2A',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634597,'AJCC/UICC pathological T2a Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T2a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919162,'pT2a1','Meas Value','NAACCR','NAACCR Value','S','880@p2A1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634633,'AJCC/UICC pathological T2a1 Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T2a1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919406,'pT2a2','Meas Value','NAACCR','NAACCR Value','S','880@p2A2',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634166,'AJCC/UICC pathological T2a2 Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T2a2',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919739,'pT2b','Meas Value','NAACCR','NAACCR Value','S','880@p2B',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635575,'AJCC/UICC pathological T2b Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T2b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919904,'pT2c','Meas Value','NAACCR','NAACCR Value','S','880@p2C',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634503,'AJCC/UICC pathological T2c Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T2c',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919201,'pT2d','Meas Value','NAACCR','NAACCR Value','S','880@p2D',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633278,'AJCC/UICC pathological T2d Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T2d',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919081,'pT3','Meas Value','NAACCR','NAACCR Value','S','880@p3',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634406,'AJCC/UICC pathological T3 Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T3',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919839,'pT3a','Meas Value','NAACCR','NAACCR Value','S','880@p3A',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633288,'AJCC/UICC pathological T3a Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T3a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919018,'pT3b','Meas Value','NAACCR','NAACCR Value','S','880@p3B',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633406,'AJCC/UICC pathological T3b Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T3b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919837,'pT3c','Meas Value','NAACCR','NAACCR Value','S','880@p3C',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635027,'AJCC/UICC pathological T3c Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T3c',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919641,'pT3d','Meas Value','NAACCR','NAACCR Value','S','880@p3D',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635377,'AJCC/UICC pathological T3d Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T3d',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919919,'pT4','Meas Value','NAACCR','NAACCR Value','S','880@p4',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633943,'AJCC/UICC pathological T4 Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T4',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919265,'pT4a','Meas Value','NAACCR','NAACCR Value','S','880@p4A',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633300,'AJCC/UICC pathological T4a Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T4a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919628,'pT4b','Meas Value','NAACCR','NAACCR Value','S','880@p4B',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634957,'AJCC/UICC pathological T4b Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T4b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919553,'pT4c','Meas Value','NAACCR','NAACCR Value','S','880@p4C',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635446,'AJCC/UICC pathological T4c Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T4c',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919766,'pT4d','Meas Value','NAACCR','NAACCR Value','S','880@p4D',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635003,'AJCC/UICC pathological T4d Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T4d',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35909741,'pT4e','Meas Value','NAACCR','NAACCR Value','S','880@p4E',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635058,'AJCC/UICC pathological T4e Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-T4e',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919573,'pTa','Meas Value','NAACCR','NAACCR Value','S','880@pA',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635888,'AJCC/UICC pathological Ta Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-Ta',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919020,'pTis','Meas Value','NAACCR','NAACCR Value','S','880@pIS',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634581,'AJCC/UICC pathological Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919370,'pTis','Meas Value','NAACCR','NAACCR Value','S','940@pIS',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634581,'AJCC/UICC pathological Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919334,'pTispd','Meas Value','NAACCR','NAACCR Value','S','940@pISD',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634581,'AJCC/UICC pathological Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919459,'pTispd','Meas Value','NAACCR','NAACCR Value','S','880@pISD',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634581,'AJCC/UICC pathological Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919388,'pTispu','Meas Value','NAACCR','NAACCR Value','S','880@pISU',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634581,'AJCC/UICC pathological Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919909,'pTispu','Meas Value','NAACCR','NAACCR Value','S','940@pISU',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634581,'AJCC/UICC pathological Tis Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-Tis',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919862,'pTX','Meas Value','NAACCR','NAACCR Value','S','880@pX',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633925,'AJCC/UICC pathological TX Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-TX',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919383,'cM0','Meas Value','NAACCR','NAACCR Value','S','900@c0',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635291,'AJCC/UICC clinical M0 Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-M0',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919673,'cM0','Meas Value','NAACCR','NAACCR Value','S','960@c0',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635291,'AJCC/UICC clinical M0 Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-M0',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919272,'cM0(i+)','Meas Value','NAACCR','NAACCR Value','S','900@c0I+',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635856,'AJCC/UICC clinical M0(i+) Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-M0(i+)',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919870,'cM0(i+)','Meas Value','NAACCR','NAACCR Value','S','960@c0I+',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635856,'AJCC/UICC clinical M0(i+) Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-M0(i+)',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919664,'cM1','Meas Value','NAACCR','NAACCR Value','S','960@c1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635085,'AJCC/UICC clinical M1 Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-M1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919824,'cM1','Meas Value','NAACCR','NAACCR Value','S','900@c1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635085,'AJCC/UICC clinical M1 Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-M1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919321,'cM1a','Meas Value','NAACCR','NAACCR Value','S','960@c1A',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633777,'AJCC/UICC clinical M1a Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-M1a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919827,'cM1a','Meas Value','NAACCR','NAACCR Value','S','900@c1A',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633777,'AJCC/UICC clinical M1a Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-M1a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919223,'cM1b','Meas Value','NAACCR','NAACCR Value','S','960@c1B',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635090,'AJCC/UICC clinical M1b Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-M1b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919263,'cM1b','Meas Value','NAACCR','NAACCR Value','S','900@c1B',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635090,'AJCC/UICC clinical M1b Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-M1b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919747,'cM1c','Meas Value','NAACCR','NAACCR Value','S','900@c1C',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635255,'AJCC/UICC clinical M1c Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-M1c',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919795,'cM1c','Meas Value','NAACCR','NAACCR Value','S','960@c1C',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635255,'AJCC/UICC clinical M1c Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-M1c',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919151,'cM1d','Meas Value','NAACCR','NAACCR Value','S','900@c1D',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634048,'AJCC/UICC clinical M1d Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-M1d',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919415,'cM1d','Meas Value','NAACCR','NAACCR Value','S','960@c1D',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634048,'AJCC/UICC clinical M1d Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-M1d',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919132,'cM1e','Meas Value','NAACCR','NAACCR Value','S','960@c1E',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635085,'AJCC/UICC clinical M1 Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-M1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919820,'cM1e','Meas Value','NAACCR','NAACCR Value','S','900@c1E',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635085,'AJCC/UICC clinical M1 Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-M1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919481,'cN0','Meas Value','NAACCR','NAACCR Value','S','890@c0',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634145,'AJCC/UICC clinical N0 Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-N0',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919626,'cN0','Meas Value','NAACCR','NAACCR Value','S','950@c0',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634145,'AJCC/UICC clinical N0 Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-N0',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919027,'cN0a','Meas Value','NAACCR','NAACCR Value','S','950@c0A',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635732,'AJCC/UICC clinical N0a Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-N0a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919712,'cN0b','Meas Value','NAACCR','NAACCR Value','S','950@c0B',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635495,'AJCC/UICC clinical N0b Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-N0b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919501,'cN0i-','Meas Value','NAACCR','NAACCR Value','S','950@c0I-',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634145,'AJCC/UICC clinical N0 Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-N0',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919561,'cN0i+','Meas Value','NAACCR','NAACCR Value','S','950@c0I+',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634145,'AJCC/UICC clinical N0 Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-N0',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35910008,'cN0m-','Meas Value','NAACCR','NAACCR Value','S','950@c0M-',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634145,'AJCC/UICC clinical N0 Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-N0',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919731,'cN0m+','Meas Value','NAACCR','NAACCR Value','S','950@c0M+',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634145,'AJCC/UICC clinical N0 Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-N0',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919638,'cN1','Meas Value','NAACCR','NAACCR Value','S','950@c1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635729,'AJCC/UICC clinical N1 Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-N1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919930,'cN1a','Meas Value','NAACCR','NAACCR Value','S','950@c1A',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635164,'AJCC/UICC clinical N1a Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-N1a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919718,'cN1b','Meas Value','NAACCR','NAACCR Value','S','950@c1B',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635599,'AJCC/UICC clinical N1b Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-N1b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919690,'cN1c','Meas Value','NAACCR','NAACCR Value','S','950@c1C',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634934,'AJCC/UICC clinical N1c Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-N1c',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919779,'cN1mi','Meas Value','NAACCR','NAACCR Value','S','950@c1MI',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635121,'AJCC/UICC clinical N1mi Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-N1mi',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919167,'cN2','Meas Value','NAACCR','NAACCR Value','S','950@c2',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634523,'AJCC/UICC clinical N2 Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-N2',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919391,'cN2a','Meas Value','NAACCR','NAACCR Value','S','950@c2A',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633429,'AJCC/UICC clinical N2a Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-N2a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919474,'cN2b','Meas Value','NAACCR','NAACCR Value','S','950@c2B',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634977,'AJCC/UICC clinical N2b Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-N2b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919658,'cN2c','Meas Value','NAACCR','NAACCR Value','S','950@c2C',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634118,'AJCC/UICC clinical N2c Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-N2c',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919149,'cN3','Meas Value','NAACCR','NAACCR Value','S','950@c3',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633914,'AJCC/UICC clinical N3 Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-N3',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919461,'cN3a','Meas Value','NAACCR','NAACCR Value','S','950@c3A',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634649,'AJCC/UICC clinical N3a Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-N3a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919453,'cN3b','Meas Value','NAACCR','NAACCR Value','S','950@c3B',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635610,'AJCC/UICC clinical N3b Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-N3b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919157,'cN3c','Meas Value','NAACCR','NAACCR Value','S','950@c3C',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634650,'AJCC/UICC clinical N3c Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-N3c',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919128,'cN4','Meas Value','NAACCR','NAACCR Value','S','950@c4',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633862,'AJCC/UICC clinical N4 Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-N4',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919166,'cNX','Meas Value','NAACCR','NAACCR Value','S','950@cX',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634722,'AJCC/UICC clinical NX Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-NX',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919314,'cT0','Meas Value','NAACCR','NAACCR Value','S','940@c0',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635155,'AJCC/UICC clinical T0 Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T0',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919386,'cT1','Meas Value','NAACCR','NAACCR Value','S','940@c1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635661,'AJCC/UICC clinical T1 Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919897,'cT1a','Meas Value','NAACCR','NAACCR Value','S','940@c1A',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633742,'AJCC/UICC clinical T1a Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T1a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919112,'cT1a1','Meas Value','NAACCR','NAACCR Value','S','940@c1A1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635676,'AJCC/UICC clinical T1a1 Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T1a1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919675,'cT1a2','Meas Value','NAACCR','NAACCR Value','S','940@c1A2',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635081,'AJCC/UICC clinical T1a2 Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T1a2',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919211,'cT1b','Meas Value','NAACCR','NAACCR Value','S','940@c1B',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635039,'AJCC/UICC clinical T1b Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T1b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919523,'pTa','Meas Value','NAACCR','NAACCR Value','S','940@pA',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635888,'AJCC/UICC pathological Ta Category','Measurement','Cancer Modifier','Staging/Grading','S','p-AJCC/UICC-Ta',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919145,'cT1b1','Meas Value','NAACCR','NAACCR Value','S','940@c1B1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635701,'AJCC/UICC clinical T1b1 Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T1b1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919039,'cT1b2','Meas Value','NAACCR','NAACCR Value','S','940@c1B2',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634659,'AJCC/UICC clinical T1b2 Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T1b2',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919333,'cT1c','Meas Value','NAACCR','NAACCR Value','S','940@c1C',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634320,'AJCC/UICC clinical T1c Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T1c',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919802,'cT1d','Meas Value','NAACCR','NAACCR Value','S','940@c1D',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634931,'AJCC/UICC clinical T1d Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T1d',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919061,'cT1mi','Meas Value','NAACCR','NAACCR Value','S','940@c1MI',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635832,'AJCC/UICC clinical T1mi Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T1mi',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919656,'cT2','Meas Value','NAACCR','NAACCR Value','S','940@c2',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635033,'AJCC/UICC clinical T2 Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T2',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919565,'cT2a','Meas Value','NAACCR','NAACCR Value','S','940@c2A',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634689,'AJCC/UICC clinical T2a Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T2a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919117,'cT2a1','Meas Value','NAACCR','NAACCR Value','S','940@c2A1',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635046,'AJCC/UICC clinical T2a1 Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T2a1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919424,'cT2a2','Meas Value','NAACCR','NAACCR Value','S','940@c2A2',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635269,'AJCC/UICC clinical T2a2 Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T2a2',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919228,'cT2b','Meas Value','NAACCR','NAACCR Value','S','940@c2B',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633781,'AJCC/UICC clinical T2b Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T2b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919872,'cT2c','Meas Value','NAACCR','NAACCR Value','S','940@c2C',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634514,'AJCC/UICC clinical T2c Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T2c',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919346,'cT2d','Meas Value','NAACCR','NAACCR Value','S','940@c2D',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633541,'AJCC/UICC clinical T2d Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T2d',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919139,'cT3','Meas Value','NAACCR','NAACCR Value','S','940@c3',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635895,'AJCC/UICC clinical T3 Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T3',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919784,'cT3a','Meas Value','NAACCR','NAACCR Value','S','940@c3A',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633758,'AJCC/UICC clinical T3a Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T3a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919771,'cT3b','Meas Value','NAACCR','NAACCR Value','S','940@c3B',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633765,'AJCC/UICC clinical T3b Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T3b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919745,'cT3c','Meas Value','NAACCR','NAACCR Value','S','940@c3C',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634088,'AJCC/UICC clinical T3c Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T3c',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919788,'cT3d','Meas Value','NAACCR','NAACCR Value','S','940@c3D',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635707,'AJCC/UICC clinical T3d Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T3d',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (35919576,'cT4a','Meas Value','NAACCR','NAACCR Value','S','940@c4A',DATE '1970-01-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634192,'AJCC/UICC clinical T4a Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T4a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (197049,'Tumor of uterine body - baby delivered with postpartum complication','Condition','SNOMED','Disorder',NULL,'267222009',DATE '2002-01-31',DATE '2023-01-31','D','Maps to','skos:exactMatch','1.0',441364,'Complication of the puerperium','Condition','SNOMED','Disorder','S','80113008',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4313433,'Adenocarcinoid tumor','Observation','SNOMED','Morph Abnormality',NULL,'86293007',DATE '2002-01-31',DATE '2024-02-01','U','Maps to','skos:exactMatch','1.0',42513163,'Neoplasm defined only by histology: Adenocarcinoid tumor','Condition','ICDO3','ICDO Condition','S','8245/3-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL),
  (4262123,'Adenocarcinoma','Observation','SNOMED','Morph Abnormality',NULL,'35917007',DATE '2002-01-31',DATE '2022-01-31','U','Maps to','skos:exactMatch','1.0',40484156,'Malignant adenomatous neoplasm','Condition','SNOMED','Disorder','S','443961001',DATE '2010-01-31',DATE '2099-12-31',NULL),
  (4263459,'Adenocarcinoma, metastatic','Observation','SNOMED','Morph Abnormality','S','4590003',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',40484156,'Malignant adenomatous neoplasm','Condition','SNOMED','Disorder','S','443961001',DATE '2010-01-31',DATE '2099-12-31',NULL),
  (4263459,'Adenocarcinoma, metastatic','Observation','SNOMED','Morph Abnormality','S','4590003',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (4265295,'Anatomic location of excised lymph node containing metastatic neoplasm','Observation','SNOMED','Observable Entity','S','397440000',DATE '2003-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36768587,'Spread to lymph node','Measurement','Cancer Modifier','Nodes','S','OMOP4998263',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (4116194,'Basal cell carcinoma - sclerosing type','Observation','SNOMED','Morph Abnormality',NULL,'302821007',DATE '2002-01-31',DATE '2023-11-01','U','Maps to','skos:exactMatch','1.0',4297183,'Sclerosing morpheic basal cell carcinoma','Condition','SNOMED','Disorder','S','403913006',DATE '2003-07-31',DATE '2099-12-31',NULL),
  (37018337,'Benign carcinoid tumor','Observation','SNOMED','Morph Abnormality',NULL,'714809007',DATE '2016-01-31',DATE '2024-02-01','U','Maps to','skos:exactMatch','1.0',1244536,'Well-differentiated neuroendocrine tumor','Condition','SNOMED','Disorder','S','1288045008',DATE '2024-02-01',DATE '2099-12-31',NULL),
  (37312397,'Benign insulinoma','Observation','SNOMED','Morph Abnormality','S','788388009',DATE '2020-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4111803,'Endocrine pancreatic adenoma','Condition','SNOMED','Disorder','S','254615000',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4331508,'Cancer antigen 125 above reference range','Measurement','SNOMED','Clinical Finding','S','432519008',DATE '2008-07-31',DATE '2099-12-31',NULL,'Maps to value','skos:exactMatch','1.0',4084765,'Above reference range','Meas Value','SNOMED','Qualifier Value','S','281302008',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4331508,'Cancer antigen 125 above reference range','Measurement','SNOMED','Clinical Finding','S','432519008',DATE '2008-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4197913,'CA 125 measurement','Measurement','SNOMED','Procedure','S','80529009',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4190930,'Cancer diagnosis based on metastatic histological evidence','Condition','SNOMED','Clinical Finding','S','373799005',DATE '2002-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (4055694,'Carcinoembryonic antigen absent','Observation','SNOMED','Context-dependent',NULL,'167056009',DATE '2002-01-31',DATE '2022-12-31','U','Maps to value','skos:exactMatchValue','1.0',9190,'Not detected','Meas Value','SNOMED','Qualifier Value','S','260415000',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4055694,'Carcinoembryonic antigen absent','Observation','SNOMED','Context-dependent',NULL,'167056009',DATE '2002-01-31',DATE '2022-12-31','U','Maps to','skos:exactMatch','1.0',4244721,'Carcinoembryonic antigen measurement','Measurement','SNOMED','Procedure','S','60267001',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4304399,'Carcinoid tumor','Observation','SNOMED','Morph Abnormality',NULL,'81622000',DATE '2002-01-31',DATE '2021-07-31','U','Maps to','skos:exactMatch','1.0',1244536,'Well-differentiated neuroendocrine tumor','Condition','SNOMED','Disorder','S','1288045008',DATE '2024-02-01',DATE '2099-12-31',NULL),
  (4099063,'Carcinoid tumor - morphology','Observation','SNOMED','Morph Abnormality',NULL,'189607006',DATE '2002-01-31',DATE '2024-02-01','U','Maps to','skos:exactMatch','1.0',1244536,'Well-differentiated neuroendocrine tumor','Condition','SNOMED','Disorder','S','1288045008',DATE '2024-02-01',DATE '2099-12-31',NULL),
  (4287106,'Carcinoma','Observation','SNOMED','Morph Abnormality',NULL,'68453008',DATE '2002-01-31',DATE '2022-01-31','U','Maps to','skos:exactMatch','1.0',36716620,'Malignant epithelial neoplasm','Condition','SNOMED','Disorder','S','722688002',DATE '2017-01-31',DATE '2099-12-31',NULL),
  (4286333,'Carcinoma in situ','Observation','SNOMED','Morph Abnormality',NULL,'68956006',DATE '2002-01-31',DATE '2021-09-30','U','Maps to','skos:exactMatch','1.0',433435,'Carcinoma in situ','Condition','SNOMED','Disorder','S','109355002',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4194691,'Carcinoma, metastatic','Observation','SNOMED','Morph Abnormality','S','79282002',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36716620,'Malignant epithelial neoplasm','Condition','SNOMED','Disorder','S','722688002',DATE '2017-01-31',DATE '2099-12-31',NULL),
  (4194691,'Carcinoma, metastatic','Observation','SNOMED','Morph Abnormality','S','79282002',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (4260393,'Choriocarcinoma','Observation','SNOMED','Morph Abnormality',NULL,'44769000',DATE '2002-01-31',DATE '2021-07-31','U','Maps to','skos:exactMatch','1.0',4092517,'Choriocarcinoma','Condition','SNOMED','Disorder','S','188188009',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4183217,'Choriocarcinoma, metastatic','Observation','SNOMED','Morph Abnormality','S','370079006',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4092517,'Choriocarcinoma','Condition','SNOMED','Disorder','S','188188009',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4183217,'Choriocarcinoma, metastatic','Observation','SNOMED','Morph Abnormality','S','370079006',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (37164209,'cM1a','Meas Value','SNOMED','Qualifier Value','S','1229904003',DATE '2022-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633777,'AJCC/UICC clinical M1a Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-M1a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (37164212,'cM1b','Meas Value','SNOMED','Qualifier Value','S','1229907005',DATE '2022-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635090,'AJCC/UICC clinical M1b Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-M1b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (4129938,'CNS metastases','Measurement','SNOMED','Staging / Scales','S','261731003',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',35226096,'Metastasis to central nervous system','Measurement','Cancer Modifier','Metastasis','S','OMOP5031564',DATE '2020-10-13',DATE '2099-12-31',NULL),
  (37164112,'cT1a','Meas Value','SNOMED','Qualifier Value','S','1228892002',DATE '2022-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633742,'AJCC/UICC clinical T1a Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T1a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (37164115,'cT1b','Meas Value','SNOMED','Qualifier Value','S','1228895000',DATE '2022-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635039,'AJCC/UICC clinical T1b Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T1b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (37164119,'cT1c','Meas Value','SNOMED','Qualifier Value','S','1228899006',DATE '2022-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634320,'AJCC/UICC clinical T1c Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T1c',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (37159668,'cT2a','Meas Value','SNOMED','Qualifier Value','S','1228931008',DATE '2022-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634689,'AJCC/UICC clinical T2a Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T2a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (37169767,'cT2b','Meas Value','SNOMED','Qualifier Value','S','1228934000',DATE '2022-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633781,'AJCC/UICC clinical T2b Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T2b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (37169768,'cT2c','Meas Value','SNOMED','Qualifier Value','S','1228936003',DATE '2022-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634514,'AJCC/UICC clinical T2c Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T2c',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (37150982,'cT3a','Meas Value','SNOMED','Qualifier Value','S','1228939005',DATE '2022-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633758,'AJCC/UICC clinical T3a Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T3a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (37169771,'cT3b','Meas Value','SNOMED','Qualifier Value','S','1228940007',DATE '2022-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633765,'AJCC/UICC clinical T3b Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T3b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (37169772,'cT3c','Meas Value','SNOMED','Qualifier Value','S','1228941006',DATE '2022-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634088,'AJCC/UICC clinical T3c Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T3c',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (37169775,'cT4a','Meas Value','SNOMED','Qualifier Value','S','1228945002',DATE '2022-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634192,'AJCC/UICC clinical T4a Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T4a',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (37169776,'cT4b','Meas Value','SNOMED','Qualifier Value','S','1228946001',DATE '2022-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634291,'AJCC/UICC clinical T4b Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T4b',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (37169778,'cT4d','Meas Value','SNOMED','Qualifier Value','S','1228948000',DATE '2022-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635368,'AJCC/UICC clinical T4d Category','Measurement','Cancer Modifier','Staging/Grading','S','c-AJCC/UICC-T4d',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (4341385,'Diagnostic cystoscopy and bladder biopsy','Procedure','SNOMED','Procedure',NULL,'236225008',DATE '2002-01-31',DATE '2022-03-31','D','Maps to','skos:exactMatch','1.0',37163186,'Cystoscopy and biopsy of urinary bladder','Procedure','SNOMED','Procedure','S','1208469004',DATE '2022-03-31',DATE '2099-12-31',NULL),
  (4163446,'Distant metastasis present','Condition','SNOMED','Clinical Finding','S','399409002',DATE '2003-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (4029509,'Enterochromaffin-like cell carcinoid','Observation','SNOMED','Morph Abnormality',NULL,'128656007',DATE '2002-01-31',DATE '2024-02-01','U','Maps to','skos:exactMatch','1.0',42514186,'Neoplasm defined only by histology: Enterochromaffin-like cell carcinoid, NOS','Condition','ICDO3','ICDO Condition','S','8242/1-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL),
  (4239952,'Ependymoma','Observation','SNOMED','Morph Abnormality',NULL,'57706008',DATE '2002-01-31',DATE '2021-07-31','U','Maps to','skos:exactMatch','1.0',40482745,'Ependymoma','Condition','SNOMED','Disorder','S','443643007',DATE '2010-01-31',DATE '2099-12-31',NULL),
  (4047589,'Fetal or neonatal effect of placental or breast transfer of chemotherapeutic agent','Condition','SNOMED','Disorder',NULL,'206023005',DATE '2002-01-31',DATE '2023-04-30','D','Maps to','skos:exactMatch','1.0',37167251,'Fetal disorder caused by substance transmitted via placenta','Condition','SNOMED','Disorder','S','1264047001',DATE '2023-04-30',DATE '2099-12-31',NULL),
  (4037498,'Gastrinoma','Observation','SNOMED','Morph Abnormality',NULL,'16189002',DATE '2002-01-31',DATE '2024-02-01','U','Maps to','skos:exactMatch','1.0',42513113,'Neoplasm defined only by histology: Gastrinoma','Condition','ICDO3','ICDO Condition','S','8153/3-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL),
  (4028719,'Glucagonoma of uncertain behavior','Observation','SNOMED','Morph Abnormality',NULL,'128855009',DATE '2002-01-31',DATE '2024-02-01','U','Maps to','skos:exactMatch','1.0',42513112,'Neoplasm defined only by histology: Glucagonoma','Condition','ICDO3','ICDO Condition','S','8152/3-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL),
  (4262799,'Granulosa cell tumor','Observation','SNOMED','Morph Abnormality',NULL,'46585005',DATE '2002-01-31',DATE '2022-01-31','D','Maps to','skos:exactMatch','1.0',4077906,'Granulosa cell tumor, malignant','Observation','SNOMED','Morph Abnormality','S','18861007',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4225568,'Hemangiopericytoma, malignant','Observation','SNOMED','Morph Abnormality',NULL,'84664004',DATE '2002-01-31',DATE '2021-10-31','U','Maps to','skos:exactMatch','1.0',42514082,'Neoplasm defined only by histology: Hemangiopericytoma, malignant','Condition','ICDO3','ICDO Condition','S','9150/3-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL),
  (40482494,'High carcinoembryonic antigen level','Measurement','SNOMED','Clinical Finding','S','445201008',DATE '2010-07-31',DATE '2099-12-31',NULL,'Maps to value','skos:exactMatch','1.0',4084765,'Above reference range','Meas Value','SNOMED','Qualifier Value','S','281302008',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (40482494,'High carcinoembryonic antigen level','Measurement','SNOMED','Clinical Finding','S','445201008',DATE '2010-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4244721,'Carcinoembryonic antigen measurement','Measurement','SNOMED','Procedure','S','60267001',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (37163941,'IA1','Meas Value','SNOMED','Qualifier Value','S','1222725008',DATE '2022-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633565,'AJCC/UICC Stage 1A1','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Stage-1A1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (37163942,'IA2','Meas Value','SNOMED','Qualifier Value','S','1222726009',DATE '2022-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635611,'AJCC/UICC Stage 1A2','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Stage-1A2',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (37163944,'IB','Meas Value','SNOMED','Qualifier Value','S','1222728005',DATE '2022-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634494,'AJCC/UICC Stage 1B','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Stage-1B',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (37169763,'IIA','Meas Value','SNOMED','Qualifier Value','S','1222766008',DATE '2022-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634123,'AJCC/UICC Stage 2A','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Stage-2A',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (37151079,'IIB','Meas Value','SNOMED','Qualifier Value','S','1222769001',DATE '2022-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634028,'AJCC/UICC Stage 2B','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Stage-2B',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (37163996,'IIIA','Meas Value','SNOMED','Qualifier Value','S','1222802001',DATE '2022-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1635855,'AJCC/UICC Stage 3A','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Stage-3A',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (37163999,'IIIB','Meas Value','SNOMED','Qualifier Value','S','1222805004',DATE '2022-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634411,'AJCC/UICC Stage 3B','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Stage-3B',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (37164000,'IIIC','Meas Value','SNOMED','Qualifier Value','S','1222806003',DATE '2022-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634150,'AJCC/UICC Stage 3C','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Stage-3C',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (4313969,'Intraductal carcinoma, noninfiltrating','Observation','SNOMED','Morph Abnormality',NULL,'86616005',DATE '2002-01-31',DATE '2021-09-30','U','Maps to','skos:exactMatch','1.0',42513335,'Neoplasm defined only by histology: Intraductal carcinoma, noninfiltrating, NOS','Condition','ICDO3','ICDO Condition','S','8500/2-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL),
  (37164007,'IVA','Meas Value','SNOMED','Qualifier Value','S','1222838008',DATE '2022-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633439,'AJCC/UICC Stage 4A','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Stage-4A',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (37164010,'IVB','Meas Value','SNOMED','Qualifier Value','S','1222841004',DATE '2022-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633748,'AJCC/UICC Stage 4B','Measurement','Cancer Modifier','Staging/Grading','S','AJCC/UICC-Stage-4B',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (4162254,'Kaposi''s sarcoma, metastatic','Observation','SNOMED','Morph Abnormality','S','372149006',DATE '2002-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',434584,'Kaposi''s sarcoma (clinical)','Condition','SNOMED','Disorder','S','109385007',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4162254,'Kaposi''s sarcoma, metastatic','Observation','SNOMED','Morph Abnormality','S','372149006',DATE '2002-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (436362,'Letterer-Siwe disease of lymph nodes of head, face AND/OR neck','Condition','SNOMED','Disorder',NULL,'93137007',DATE '2002-01-31',DATE '2022-11-30','U','Maps to','skos:exactMatch','1.0',1075876,'Disseminated Langerhans cell histiocytosis of lymph nodes of head','Condition','SNOMED','Disorder','S','1332425004',DATE '2024-05-01',DATE '2099-12-31',NULL),
  (436362,'Letterer-Siwe disease of lymph nodes of head, face AND/OR neck','Condition','SNOMED','Disorder',NULL,'93137007',DATE '2002-01-31',DATE '2022-11-30','U','Maps to','skos:exactMatch','1.0',1075877,'Disseminated Langerhans cell histiocytosis of cervical lymph nodes','Condition','SNOMED','Disorder','S','1332426003',DATE '2024-05-01',DATE '2099-12-31',NULL),
  (4176894,'Liposarcoma, no International Classification of Diseases for Oncology subtype','Observation','SNOMED','Morph Abnormality',NULL,'49430005',DATE '2002-01-31',DATE '2021-09-30','U','Maps to','skos:exactMatch','1.0',4110857,'Liposarcoma','Condition','SNOMED','Disorder','S','254829001',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4313066,'Malignant blood vessel neoplasm, metastatic','Observation','SNOMED','Morph Abnormality','S','423251006',DATE '2007-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',37165524,'Malignant neoplasm of blood vessel','Condition','SNOMED','Disorder','S','1254957001',DATE '2022-11-30',DATE '2099-12-31',NULL),
  (4313066,'Malignant blood vessel neoplasm, metastatic','Observation','SNOMED','Morph Abnormality','S','423251006',DATE '2007-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (608265,'Malignant carcinoid tumor','Observation','SNOMED','Morph Abnormality',NULL,'1157139005',DATE '2021-07-31',DATE '2024-02-01','U','Maps to','skos:exactMatch','1.0',1244536,'Well-differentiated neuroendocrine tumor','Condition','SNOMED','Disorder','S','1288045008',DATE '2024-02-01',DATE '2099-12-31',NULL),
  (4266638,'Malignant epithelial neoplasm - category','Observation','SNOMED','Morph Abnormality',NULL,'399879007',DATE '2003-07-31',DATE '2021-11-30','U','Maps to','skos:exactMatch','1.0',36716620,'Malignant epithelial neoplasm','Condition','SNOMED','Disorder','S','722688002',DATE '2017-01-31',DATE '2099-12-31',NULL),
  (4211797,'Malignant glioma - category','Observation','SNOMED','Morph Abnormality',NULL,'416500007',DATE '2005-07-31',DATE '2021-11-30','U','Maps to','skos:exactMatch','1.0',42513804,'Neoplasm defined only by histology: Glioma, malignant','Condition','ICDO3','ICDO Condition','S','9380/3-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL),
  (4071676,'Malignant lymphoma','Observation','SNOMED','Morph Abnormality',NULL,'21964009',DATE '2002-01-31',DATE '2021-09-30','U','Maps to','skos:exactMatch','1.0',432571,'Malignant lymphoma','Condition','SNOMED','Disorder','S','118600007',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4262918,'Malignant lymphoma, large B-cell, diffuse','Observation','SNOMED','Morph Abnormality',NULL,'46732000',DATE '2002-01-31',DATE '2021-09-30','U','Maps to','skos:exactMatch','1.0',432574,'Diffuse large B-cell lymphoma','Condition','SNOMED','Disorder','S','109969005',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4004515,'Malignant lymphoma, metastatic','Observation','SNOMED','Morph Abnormality','S','110459008',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',432571,'Malignant lymphoma','Condition','SNOMED','Disorder','S','118600007',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4004515,'Malignant lymphoma, metastatic','Observation','SNOMED','Morph Abnormality','S','110459008',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (4078707,'Malignant lymphoma, non-Hodgkin','Observation','SNOMED','Morph Abnormality',NULL,'1929004',DATE '2002-01-31',DATE '2021-09-30','U','Maps to','skos:exactMatch','1.0',4038838,'Non-Hodgkin''s lymphoma (clinical)','Condition','SNOMED','Disorder','S','118601006',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4049499,'Malignant melanoma','Observation','SNOMED','Morph Abnormality',NULL,'2092003',DATE '2002-01-31',DATE '2021-09-30','U','Maps to','skos:exactMatch','1.0',4162276,'Malignant melanoma','Condition','SNOMED','Disorder','S','372244006',DATE '2002-07-31',DATE '2099-12-31',NULL),
  (4162258,'Malignant melanoma - category','Observation','SNOMED','Morph Abnormality',NULL,'372156000',DATE '2002-07-31',DATE '2021-09-30','U','Maps to','skos:exactMatch','1.0',4162276,'Malignant melanoma','Condition','SNOMED','Disorder','S','372244006',DATE '2002-07-31',DATE '2099-12-31',NULL),
  (4157460,'Malignant melanoma, metastatic','Observation','SNOMED','Morph Abnormality','S','372158004',DATE '2002-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4162276,'Malignant melanoma','Condition','SNOMED','Disorder','S','372244006',DATE '2002-07-31',DATE '2099-12-31',NULL),
  (4157460,'Malignant melanoma, metastatic','Observation','SNOMED','Morph Abnormality','S','372158004',DATE '2002-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (4282379,'Malignant Neoplasm (Morphology)','Observation','SNOMED','Morph Abnormality',NULL,'367651003',DATE '2002-01-31',DATE '2022-11-30','U','Maps to','skos:exactMatch','1.0',443392,'Malignant neoplastic disease','Condition','SNOMED','Disorder','S','363346000',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4098947,'Malignant squamous tumor','Observation','SNOMED','Morph Abnormality',NULL,'252988009',DATE '2002-01-31',DATE '2022-11-30','U','Maps to','skos:exactMatch','1.0',4300118,'Squamous cell carcinoma','Condition','SNOMED','Disorder','S','402815007',DATE '2003-07-31',DATE '2099-12-31',NULL),
  (4297801,'Materno-fetal metastatic malignant melanoma','Condition','SNOMED','Disorder','S','402560002',DATE '2003-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (4297801,'Materno-fetal metastatic malignant melanoma','Condition','SNOMED','Disorder','S','402560002',DATE '2003-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4162276,'Malignant melanoma','Condition','SNOMED','Disorder','S','372244006',DATE '2002-07-31',DATE '2099-12-31',NULL),
  (45773099,'Medullary-like carcinoma','Observation','SNOMED','Morph Abnormality',NULL,'703595002',DATE '2014-07-31',DATE '2024-02-01','U','Maps to','skos:exactMatch','1.0',42513353,'Neoplasm defined only by histology: Medullary carcinoma, NOS','Condition','ICDO3','ICDO Condition','S','8510/3-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL),
  (43531596,'Metastasis to lymph node from adenocarcinoma','Condition','SNOMED','Disorder',NULL,'1681000119102',DATE '2012-03-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',40484156,'Malignant adenomatous neoplasm','Condition','SNOMED','Disorder','S','443961001',DATE '2010-01-31',DATE '2099-12-31',NULL),
  (43531596,'Metastasis to lymph node from adenocarcinoma','Condition','SNOMED','Disorder',NULL,'1681000119102',DATE '2012-03-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36768587,'Spread to lymph node','Measurement','Cancer Modifier','Nodes','S','OMOP4998263',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (4029023,'Metastasizing leiomyoma','Observation','SNOMED','Morph Abnormality','S','128747005',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',197236,'Uterine leiomyoma','Condition','SNOMED','Disorder','S','95315005',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4029023,'Metastasizing leiomyoma','Observation','SNOMED','Morph Abnormality','S','128747005',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (604497,'Metastatic adenocarcinoma','Condition','SNOMED','Disorder','S','354081000119101',DATE '2021-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',40484156,'Malignant adenomatous neoplasm','Condition','SNOMED','Disorder','S','443961001',DATE '2010-01-31',DATE '2099-12-31',NULL),
  (604497,'Metastatic adenocarcinoma','Condition','SNOMED','Disorder','S','354081000119101',DATE '2021-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (4145870,'Metastatic adenocarcinoma of unknown origin','Condition','SNOMED','Disorder','S','307226002',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36402366,'Adenocarcinoma, NOS, of unknown primary site','Condition','ICDO3','ICDO Condition','S','8140/3-C80.9',DATE '2015-09-18',DATE '2099-12-31',NULL),
  (4145870,'Metastatic adenocarcinoma of unknown origin','Condition','SNOMED','Disorder','S','307226002',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (600834,'Metastatic adenocarcinoma to pleura','Condition','SNOMED','Disorder',NULL,'91191000119108',DATE '2021-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',40484156,'Malignant adenomatous neoplasm','Condition','SNOMED','Disorder','S','443961001',DATE '2010-01-31',DATE '2099-12-31',NULL),
  (600834,'Metastatic adenocarcinoma to pleura','Condition','SNOMED','Disorder',NULL,'91191000119108',DATE '2021-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',35226258,'Metastasis to pleura','Measurement','Cancer Modifier','Metastasis','S','OMOP5031810',DATE '2020-10-13',DATE '2099-12-31',NULL),
  (608852,'Metastatic adenocarcinoma to skin','Condition','SNOMED','Disorder',NULL,'91231000119104',DATE '2021-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',40484156,'Malignant adenomatous neoplasm','Condition','SNOMED','Disorder','S','443961001',DATE '2010-01-31',DATE '2099-12-31',NULL),
  (608852,'Metastatic adenocarcinoma to skin','Condition','SNOMED','Disorder',NULL,'91231000119104',DATE '2021-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',35225673,'Metastasis to skin','Measurement','Cancer Modifier','Metastasis','S','OMOP5031865',DATE '2020-10-13',DATE '2099-12-31',NULL),
  (37167301,'Metastatic adenosquamous carcinoma','Condition','SNOMED','Disorder','S','1264116009',DATE '2023-02-28',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4298029,'Adenosquamous cell carcinoma','Condition','SNOMED','Disorder','S','403902008',DATE '2003-07-31',DATE '2099-12-31',NULL),
  (37167301,'Metastatic adenosquamous carcinoma','Condition','SNOMED','Disorder','S','1264116009',DATE '2023-02-28',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (4336816,'Metastatic from','Observation','SNOMED','Attribute',NULL,'8707003',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (46270968,'Metastatic hepatocellular carcinoma','Observation','SNOMED','Morph Abnormality','S','708973006',DATE '2015-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4001171,'Liver cell carcinoma','Condition','SNOMED','Disorder','S','109841003',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (46270968,'Metastatic hepatocellular carcinoma','Observation','SNOMED','Morph Abnormality','S','708973006',DATE '2015-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (46271138,'Metastatic leiomyosarcoma','Observation','SNOMED','Morph Abnormality','S','709190005',DATE '2015-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',40482829,'Leiomyosarcoma','Condition','SNOMED','Disorder','S','443719001',DATE '2010-01-31',DATE '2099-12-31',NULL),
  (46271138,'Metastatic leiomyosarcoma','Observation','SNOMED','Morph Abnormality','S','709190005',DATE '2015-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (432851,'Metastatic malignant neoplasm','Condition','SNOMED','Disorder','S','128462008',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (432851,'Metastatic malignant neoplasm','Condition','SNOMED','Disorder','S','128462008',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',443392,'Malignant neoplastic disease','Condition','SNOMED','Disorder','S','363346000',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (1075532,'Metastatic malignant neoplasm to areola','Condition','SNOMED','Disorder','S','1306323006',DATE '2024-04-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',443392,'Malignant neoplastic disease','Condition','SNOMED','Disorder','S','363346000',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (1075532,'Metastatic malignant neoplasm to areola','Condition','SNOMED','Disorder','S','1306323006',DATE '2024-04-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',35225556,'Metastasis to breast','Measurement','Cancer Modifier','Metastasis','S','OMOP5031547',DATE '2020-10-13',DATE '2099-12-31',NULL),
  (4312276,'Metastatic malignant neoplasm to blood vessel','Condition','SNOMED','Disorder',NULL,'94211009',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',443392,'Malignant neoplastic disease','Condition','SNOMED','Disorder','S','363346000',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4312276,'Metastatic malignant neoplasm to blood vessel','Condition','SNOMED','Disorder',NULL,'94211009',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',35226042,'Metastasis to blood vessel','Measurement','Cancer Modifier','Metastasis','S','OMOP5031506',DATE '2020-10-13',DATE '2099-12-31',NULL),
  (1075531,'Metastatic malignant neoplasm to ectopic site of breast','Condition','SNOMED','Disorder','S','1306322001',DATE '2024-04-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',443392,'Malignant neoplastic disease','Condition','SNOMED','Disorder','S','363346000',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (1075531,'Metastatic malignant neoplasm to ectopic site of breast','Condition','SNOMED','Disorder','S','1306322001',DATE '2024-04-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',35225556,'Metastasis to breast','Measurement','Cancer Modifier','Metastasis','S','OMOP5031547',DATE '2020-10-13',DATE '2099-12-31',NULL),
  (1075530,'Metastatic malignant neoplasm to nipple','Condition','SNOMED','Disorder','S','1306321008',DATE '2024-04-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',443392,'Malignant neoplastic disease','Condition','SNOMED','Disorder','S','363346000',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (1075530,'Metastatic malignant neoplasm to nipple','Condition','SNOMED','Disorder','S','1306321008',DATE '2024-04-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',35225556,'Metastasis to breast','Measurement','Cancer Modifier','Metastasis','S','OMOP5031547',DATE '2020-10-13',DATE '2099-12-31',NULL),
  (4147162,'Metastatic malignant neoplasm to respiratory and digestive systems','Condition','SNOMED','Disorder','S','269473008',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',35226222,'Metastasis to digestive organ','Measurement','Cancer Modifier','Metastasis','S','OMOP5031769',DATE '2020-10-13',DATE '2099-12-31',NULL),
  (4147162,'Metastatic malignant neoplasm to respiratory and digestive systems','Condition','SNOMED','Disorder','S','269473008',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',35226280,'Metastasis to respiratory tract','Measurement','Cancer Modifier','Metastasis','S','OMOP5031834',DATE '2020-10-13',DATE '2099-12-31',NULL),
  (4147162,'Metastatic malignant neoplasm to respiratory and digestive systems','Condition','SNOMED','Disorder','S','269473008',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',439392,'Primary malignant neoplasm','Condition','SNOMED','Disorder','S','372087000',DATE '2002-07-31',DATE '2099-12-31',NULL),
  (46273704,'Metastatic Mullerian mixed tumor','Observation','SNOMED','Morph Abnormality','S','708974000',DATE '2015-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',42513618,'Neoplasm defined only by histology: Carcinosarcoma, NOS','Condition','ICDO3','ICDO Condition','S','8980/3-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL),
  (46273704,'Metastatic Mullerian mixed tumor','Observation','SNOMED','Morph Abnormality','S','708974000',DATE '2015-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (36684857,'Metastatic non-small cell lung cancer','Condition','SNOMED','Disorder','S','457721000124104',DATE '2018-09-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4115276,'Non-small cell lung cancer','Condition','SNOMED','Disorder','S','254637007',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (36684857,'Metastatic non-small cell lung cancer','Condition','SNOMED','Disorder','S','457721000124104',DATE '2018-09-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (37167409,'Metastatic papillary squamous cell carcinoma','Condition','SNOMED','Disorder','S','1264258003',DATE '2023-02-28',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',42513034,'Neoplasm defined only by histology: Papillary squamous cell carcinoma','Condition','ICDO3','ICDO Condition','S','8052/3-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL),
  (37167409,'Metastatic papillary squamous cell carcinoma','Condition','SNOMED','Disorder','S','1264258003',DATE '2023-02-28',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (4181016,'Metastatic signet ring cell carcinoma','Observation','SNOMED','Morph Abnormality','S','4305004',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',42513333,'Neoplasm defined only by histology: Signet ring cell carcinoma','Condition','ICDO3','ICDO Condition','S','8490/3-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL),
  (4181016,'Metastatic signet ring cell carcinoma','Observation','SNOMED','Morph Abnormality','S','4305004',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (46271141,'Metastatic small cell carcinoma','Observation','SNOMED','Morph Abnormality','S','709194001',DATE '2015-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36712771,'Small cell neuroendocrine carcinoma','Condition','SNOMED','Disorder','S','11010461000119101',DATE '2017-01-31',DATE '2099-12-31',NULL),
  (46271141,'Metastatic small cell carcinoma','Observation','SNOMED','Morph Abnormality','S','709194001',DATE '2015-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (1076216,'Metastatic spindle cell rhabdomyosarcoma','Condition','SNOMED','Disorder','S','1336170004',DATE '2024-06-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4297338,'Spindle cell rhabdomyosarcoma','Condition','SNOMED','Disorder','S','404055006',DATE '2003-07-31',DATE '2099-12-31',NULL),
  (1076216,'Metastatic spindle cell rhabdomyosarcoma','Condition','SNOMED','Disorder','S','1336170004',DATE '2024-06-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (4301510,'Metastatic squamous cell carcinoma','Condition','SNOMED','Disorder','S','403906006',DATE '2003-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4300118,'Squamous cell carcinoma','Condition','SNOMED','Disorder','S','402815007',DATE '2003-07-31',DATE '2099-12-31',NULL),
  (4301510,'Metastatic squamous cell carcinoma','Condition','SNOMED','Disorder','S','403906006',DATE '2003-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (608855,'Metastatic squamous cell carcinoma to liver','Condition','SNOMED','Disorder',NULL,'107831000119101',DATE '2021-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4300118,'Squamous cell carcinoma','Condition','SNOMED','Disorder','S','402815007',DATE '2003-07-31',DATE '2099-12-31',NULL),
  (608855,'Metastatic squamous cell carcinoma to liver','Condition','SNOMED','Disorder',NULL,'107831000119101',DATE '2021-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36770544,'Metastasis to liver','Measurement','Cancer Modifier','Metastasis','S','OMOP5000224',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (600828,'Metastatic squamous cell carcinoma to skin','Condition','SNOMED','Disorder',NULL,'78461000119105',DATE '2021-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4300118,'Squamous cell carcinoma','Condition','SNOMED','Disorder','S','402815007',DATE '2003-07-31',DATE '2099-12-31',NULL),
  (600828,'Metastatic squamous cell carcinoma to skin','Condition','SNOMED','Disorder',NULL,'78461000119105',DATE '2021-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',35225673,'Metastasis to skin','Measurement','Cancer Modifier','Metastasis','S','OMOP5031865',DATE '2020-10-13',DATE '2099-12-31',NULL),
  (46271142,'Metastatic teratoma','Observation','SNOMED','Morph Abnormality','S','709195000',DATE '2015-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',40391775,'Malignant teratoma','Condition','SNOMED','Disorder','S','189847002',DATE '2019-01-31',DATE '2099-12-31',NULL),
  (46271142,'Metastatic teratoma','Observation','SNOMED','Morph Abnormality','S','709195000',DATE '2015-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (765659,'Mother receiving cancer chemotherapy','Observation','SNOMED','Context-dependent',NULL,'428661000124104',DATE '2012-09-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4051255,'Family history with explicit context pertaining to mother','Observation','SNOMED','Context-dependent','S','160427003',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (765659,'Mother receiving cancer chemotherapy','Observation','SNOMED','Context-dependent',NULL,'428661000124104',DATE '2012-09-01',DATE '2099-12-31',NULL,'Maps to value','skos:exactMatch','1.0',4181511,'Administration of antineoplastic agent','Procedure','SNOMED','Procedure','S','363688001',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4309352,'Mullerian mixed tumor','Observation','SNOMED','Morph Abnormality',NULL,'84427001',DATE '2002-01-31',DATE '2022-10-31','U','Maps to','skos:exactMatch','1.0',42513618,'Neoplasm defined only by histology: Carcinosarcoma, NOS','Condition','ICDO3','ICDO Condition','S','8980/3-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL),
  (4029666,'Myelodysplastic syndrome with multilineage dysplasia','Observation','SNOMED','Morph Abnormality',NULL,'128836009',DATE '2002-01-31',DATE '2023-03-31','U','Maps to','skos:exactMatch','1.0',42514053,'Neoplasm defined only by histology: Myelodysplastic syndrome with multilineage dysplasia','Condition','ICDO3','ICDO Condition','S','9985/3-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL),
  (4159958,'Myelodysplastic syndrome, no ICD-O subtype','Observation','SNOMED','Morph Abnormality',NULL,'373381004',DATE '2002-07-31',DATE '2021-07-31','U','Maps to','skos:exactMatch','1.0',138994,'Myelodysplastic syndrome (clinical)','Condition','SNOMED','Disorder','S','109995007',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4019110,'Myeloproliferative neoplasm','Observation','SNOMED','Morph Abnormality',NULL,'115248004',DATE '2002-01-31',DATE '2021-07-31','U','Maps to','skos:exactMatch','1.0',42514037,'Neoplasm defined only by histology: Myeloproliferative neoplasm, NOS','Condition','ICDO3','ICDO Condition','S','9960/3-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL),
  (4029667,'Myeloproliferative neoplasm, no ICD-O subtype','Observation','SNOMED','Morph Abnormality',NULL,'128842008',DATE '2002-01-31',DATE '2021-07-31','U','Maps to','skos:exactMatch','1.0',42514037,'Neoplasm defined only by histology: Myeloproliferative neoplasm, NOS','Condition','ICDO3','ICDO Condition','S','9960/3-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL),
  (4312326,'Neoplasm, malignant (primary)','Observation','SNOMED','Morph Abnormality',NULL,'86049000',DATE '2002-01-31',DATE '2022-11-30','U','Maps to','skos:exactMatch','1.0',443392,'Malignant neoplastic disease','Condition','SNOMED','Disorder','S','363346000',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4032806,'Neoplasm, metastatic','Observation','SNOMED','Morph Abnormality','S','14799000',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',443392,'Malignant neoplastic disease','Condition','SNOMED','Disorder','S','363346000',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4032806,'Neoplasm, metastatic','Observation','SNOMED','Morph Abnormality','S','14799000',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (4184763,'Neuroendocrine tumor','Observation','SNOMED','Morph Abnormality',NULL,'55937004',DATE '2002-01-31',DATE '2024-02-01','D','Maps to','skos:exactMatch','1.0',1242311,'Well-differentiated neuroendocrine tumor','Observation','SNOMED','Morph Abnormality','S','1286768001',DATE '2024-02-01',DATE '2099-12-31',NULL),
  (4133828,'Neuroendocrine tumor grade 1','Observation','SNOMED','Morph Abnormality',NULL,'127572005',DATE '2002-01-31',DATE '2024-02-01','D','Maps to','skos:exactMatch','1',1242312,'Well-differentiated neuroendocrine tumor grade 1','Observation','SNOMED','Morph Abnormality','S','1286769009',DATE '2024-02-01',DATE '2099-12-31',NULL),
  (4133297,'Neuroendocrine tumor grade 2','Observation','SNOMED','Morph Abnormality',NULL,'127573000',DATE '2002-01-31',DATE '2024-02-01','D','Maps to','skos:exactMatch','1',1242313,'Well-differentiated neuroendocrine tumor grade 2','Observation','SNOMED','Morph Abnormality','S','1286770005',DATE '2024-02-01',DATE '2099-12-31',NULL),
  (4133298,'Neuroendocrine tumor grade 3','Observation','SNOMED','Morph Abnormality',NULL,'127574006',DATE '2002-01-31',DATE '2024-02-01','D','Maps to','skos:exactMatch','1',1242314,'Well-differentiated neuroendocrine tumor grade 3','Observation','SNOMED','Morph Abnormality','S','1286772002',DATE '2024-02-01',DATE '2099-12-31',NULL),
  (4134634,'No metastases','Measurement','SNOMED','Staging / Scales','S','261985008',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (4134634,'No metastases','Measurement','SNOMED','Staging / Scales','S','261985008',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to value','skos:exactMatchValue','1.0',9189,'Negative','Meas Value','SNOMED','Qualifier Value','S','260385009',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (37016150,'Non-Hodgkin lymphoma of central nervous system metastatic to lymph node of lower limb','Condition','SNOMED','Disorder','S','116811000119106',DATE '2016-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',40488942,'Non-Hodgkin''s lymphoma of central nervous system','Condition','SNOMED','Disorder','S','448254007',DATE '2011-07-31',DATE '2099-12-31',NULL),
  (37016150,'Non-Hodgkin lymphoma of central nervous system metastatic to lymph node of lower limb','Condition','SNOMED','Disorder','S','116811000119106',DATE '2016-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36768587,'Spread to lymph node','Measurement','Cancer Modifier','Nodes','S','OMOP4998263',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (37018877,'Non-Hodgkin lymphoma of central nervous system metastatic to lymph node of upper limb','Condition','SNOMED','Disorder','S','116821000119104',DATE '2016-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',40488942,'Non-Hodgkin''s lymphoma of central nervous system','Condition','SNOMED','Disorder','S','448254007',DATE '2011-07-31',DATE '2099-12-31',NULL),
  (37018877,'Non-Hodgkin lymphoma of central nervous system metastatic to lymph node of upper limb','Condition','SNOMED','Disorder','S','116821000119104',DATE '2016-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36768587,'Spread to lymph node','Measurement','Cancer Modifier','Nodes','S','OMOP4998263',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (37208188,'Non-metastatic prostate cancer','Condition','SNOMED','Disorder','S','461511000124101',DATE '2019-03-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',44502000,'Neoplasm, malignant of prostate gland','Condition','ICDO3','ICDO Condition','S','8000/3-C61.9',DATE '2015-09-18',DATE '2099-12-31',NULL),
  (37208188,'Non-metastatic prostate cancer','Condition','SNOMED','Disorder','S','461511000124101',DATE '2019-03-01',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (37208188,'Non-metastatic prostate cancer','Condition','SNOMED','Disorder','S','461511000124101',DATE '2019-03-01',DATE '2099-12-31',NULL,'Maps to value','skos:exactMatchValue','1.0',9189,'Negative','Meas Value','SNOMED','Qualifier Value','S','260385009',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (40479814,'Number of lymph nodes containing micrometastases in excised specimen','Measurement','SNOMED','Observable Entity','S','444511005',DATE '2010-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36768460,'Lymph Nodes with Micrometastases','Measurement','Cancer Modifier','Nodes','S','OMOP4998136',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (4298553,'Oat cell carcinoma','Observation','SNOMED','Morph Abnormality',NULL,'76817009',DATE '2002-01-31',DATE '2024-02-01','U','Maps to','skos:exactMatch','1.0',42513024,'Neoplasm defined only by histology: Oat cell carcinoma','Condition','ICDO3','ICDO Condition','S','8042/3-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL),
  (4226108,'Papillary carcinoma, solid','Observation','SNOMED','Morph Abnormality',NULL,'421980000',DATE '2006-07-31',DATE '2023-12-01','D','Maps to','skos:exactMatch','1.0',4093456,'Papillary carcinoma','Observation','SNOMED','Morph Abnormality','S','25910003',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4154265,'Presence of direct invasion by primary malignant neoplasm to lymphatic vessel and/or small blood vessel','Observation','SNOMED','Observable Entity','S','371512006',DATE '2002-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36768891,'Lymphovascular Invasion (LVI)','Measurement','Cancer Modifier','Extension/Invasion','S','OMOP4998568',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (4245252,'Prostate specific antigen above reference range','Measurement','SNOMED','Clinical Finding','S','396152005',DATE '2003-07-31',DATE '2099-12-31',NULL,'Maps to value','skos:exactMatchValue','1.0',4084765,'Above reference range','Meas Value','SNOMED','Qualifier Value','S','281302008',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4245252,'Prostate specific antigen above reference range','Measurement','SNOMED','Clinical Finding','S','396152005',DATE '2003-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4272032,'Prostate specific antigen measurement','Measurement','SNOMED','Procedure','S','63476009',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (37163888,'R0','Meas Value','SNOMED','Qualifier Value','S','1222638005',DATE '2022-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634643,'R0: No residual tumor','Measurement','Cancer Modifier','Staging/Grading','S','R0',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (37163889,'R1','Meas Value','SNOMED','Qualifier Value','S','1222639002',DATE '2022-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1633801,'R1: Microscopic residual tumor','Measurement','Cancer Modifier','Staging/Grading','S','R1',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (37163890,'R2','Meas Value','SNOMED','Qualifier Value','S','1222640000',DATE '2022-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634484,'R2: Macroscopic residual tumor','Measurement','Cancer Modifier','Staging/Grading','S','R2',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (4311117,'Radiation-induced disorder','Condition','SNOMED','Disorder',NULL,'85983004',DATE '2002-01-31',DATE '2023-07-31','U','Maps to','skos:exactMatch','1.0',1076111,'Effect of ionizing radiation','Condition','SNOMED','Clinical Finding','S','1335857004',DATE '2024-07-01',DATE '2099-12-31',NULL),
  (4028717,'Refractory anemia','Observation','SNOMED','Morph Abnormality',NULL,'128845005',DATE '2002-01-31',DATE '2023-03-31','U','Maps to','skos:exactMatch','1.0',37166869,'Myelodysplastic syndrome with low blasts','Condition','SNOMED','Disorder','S','1260268001',DATE '2023-03-31',DATE '2099-12-31',NULL),
  (4163438,'Regional lymph node metastasis present','Condition','SNOMED','Clinical Finding','S','399374009',DATE '2003-07-31',DATE '2099-12-31',NULL,'Maps to value','skos:exactMatchValue','1.0',4181412,'Present','Meas Value','SNOMED','Qualifier Value','S','52101004',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4163438,'Regional lymph node metastasis present','Condition','SNOMED','Clinical Finding','S','399374009',DATE '2003-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769269,'Regional spread to lymph node','Measurement','Cancer Modifier','Nodes','S','OMOP4998946',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (4257442,'Right regional lymph node metastasis present','Condition','SNOMED','Clinical Finding','S','409714000',DATE '2004-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769269,'Regional spread to lymph node','Measurement','Cancer Modifier','Nodes','S','OMOP4998946',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (4257442,'Right regional lymph node metastasis present','Condition','SNOMED','Clinical Finding','S','409714000',DATE '2004-07-31',DATE '2099-12-31',NULL,'Maps to value','skos:exactMatchValue','1.0',4181412,'Present','Meas Value','SNOMED','Qualifier Value','S','52101004',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4163000,'Sarcoma, metastatic','Observation','SNOMED','Morph Abnormality','S','372152003',DATE '2002-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4311439,'Sarcoma','Condition','SNOMED','Disorder','S','424413001',DATE '2007-01-31',DATE '2099-12-31',NULL),
  (4163000,'Sarcoma, metastatic','Observation','SNOMED','Morph Abnormality','S','372152003',DATE '2002-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (4161021,'Secondary tumor site','Observation','SNOMED','Observable Entity','S','399462009',DATE '2003-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (4280592,'Seminoma','Observation','SNOMED','Morph Abnormality',NULL,'36741007',DATE '2002-01-31',DATE '2021-09-30','U','Maps to','skos:exactMatch','1.0',40482780,'Seminoma','Condition','SNOMED','Disorder','S','443675005',DATE '2010-01-31',DATE '2099-12-31',NULL),
  (4029673,'Sertoli cell tumor','Observation','SNOMED','Morph Abnormality',NULL,'128857001',DATE '2002-01-31',DATE '2021-09-30','U','Maps to','skos:exactMatch','1.0',42513425,'Neoplasm defined only by histology: Sertoli cell tumor, NOS','Condition','ICDO3','ICDO Condition','S','8640/1-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL),
  (4323118,'Sex cord-stromal tumor','Observation','SNOMED','Morph Abnormality',NULL,'71440001',DATE '2002-01-31',DATE '2021-09-30','U','Maps to','skos:exactMatch','1.0',42513399,'Neoplasm defined only by histology: Sex cord-gonadal stromal tumor, NOS','Condition','ICDO3','ICDO Condition','S','8590/1-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL),
  (4299435,'Site of distant metastasis','Observation','SNOMED','Observable Entity','S','385421009',DATE '2003-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (4242727,'Small cell carcinoma, intermediate cell','Observation','SNOMED','Morph Abnormality',NULL,'5958006',DATE '2002-01-31',DATE '2024-02-01','U','Maps to','skos:exactMatch','1.0',42513026,'Neoplasm defined only by histology: Small cell carcinoma, intermediate cell','Condition','ICDO3','ICDO Condition','S','8044/3-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL),
  (4028562,'Solitary fibrous tumor, malignant','Observation','SNOMED','Morph Abnormality',NULL,'128737007',DATE '2002-01-31',DATE '2021-10-31','U','Maps to','skos:exactMatch','1.0',42513518,'Neoplasm defined only by histology: Solitary fibrous tumor, malignant','Condition','ICDO3','ICDO Condition','S','8815/3-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL),
  (4029978,'Somatostatinoma','Observation','SNOMED','Morph Abnormality',NULL,'128642005',DATE '2002-01-31',DATE '2024-02-01','U','Maps to','skos:exactMatch','1.0',42513116,'Neoplasm defined only by histology: Somatostatinoma','Condition','ICDO3','ICDO Condition','S','8156/3-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL),
  (4103543,'Squamous cell carcinoma','Observation','SNOMED','Morph Abnormality',NULL,'28899001',DATE '2002-01-31',DATE '2021-09-30','U','Maps to','skos:exactMatch','1.0',4300118,'Squamous cell carcinoma','Condition','SNOMED','Disorder','S','402815007',DATE '2003-07-31',DATE '2099-12-31',NULL),
  (4241977,'Squamous cell carcinoma in situ','Observation','SNOMED','Morph Abnormality',NULL,'59529006',DATE '2002-01-31',DATE '2021-09-30','U','Maps to','skos:exactMatch','1.0',4300118,'Squamous cell carcinoma','Condition','SNOMED','Disorder','S','402815007',DATE '2003-07-31',DATE '2099-12-31',NULL),
  (4271714,'Squamous cell carcinoma, metastatic','Observation','SNOMED','Morph Abnormality','S','64204000',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',4300118,'Squamous cell carcinoma','Condition','SNOMED','Disorder','S','402815007',DATE '2003-07-31',DATE '2099-12-31',NULL),
  (4271714,'Squamous cell carcinoma, metastatic','Observation','SNOMED','Morph Abnormality','S','64204000',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (4127500,'Stage 0','Meas Value','SNOMED','Qualifier Value','S','261613009',DATE '2002-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',1634946,'Stage 0','Measurement','Cancer Modifier','Staging/Grading','S','Stage-0',DATE '2022-05-09',DATE '2099-12-31',NULL),
  (4024302,'Teratoma, malignant','Observation','SNOMED','Morph Abnormality',NULL,'19467007',DATE '2002-01-31',DATE '2021-07-31','U','Maps to','skos:exactMatch','1.0',40391775,'Malignant teratoma','Condition','SNOMED','Disorder','S','189847002',DATE '2019-01-31',DATE '2099-12-31',NULL),
  (4030263,'Therapy-related acute myeloid leukemia and myelodysplastic syndrome','Observation','SNOMED','Morph Abnormality',NULL,'128830003',DATE '2002-01-31',DATE '2023-03-31','U','Maps to','skos:exactMatch','1.0',42538579,'Therapy related acute myeloid leukemia due to and following administration of antineoplastic agent','Condition','SNOMED','Disorder','S','762315004',DATE '2018-01-31',DATE '2099-12-31',NULL),
  (4028548,'Thymoma, type A','Observation','SNOMED','Morph Abnormality',NULL,'128707003',DATE '2002-01-31',DATE '2022-01-31','U','Maps to','skos:exactMatch','1.0',606393,'Thymoma type A','Condition','SNOMED','Disorder','S','1144928005',DATE '2021-07-31',DATE '2099-12-31',NULL),
  (4028550,'Thymoma, type AB','Observation','SNOMED','Morph Abnormality',NULL,'128709000',DATE '2002-01-31',DATE '2022-01-31','U','Maps to','skos:exactMatch','1.0',606387,'Thymoma type AB','Condition','SNOMED','Disorder','S','1144922006',DATE '2021-07-31',DATE '2099-12-31',NULL),
  (4028553,'Thymoma, type B2','Observation','SNOMED','Morph Abnormality',NULL,'128713007',DATE '2002-01-31',DATE '2022-01-31','U','Maps to','skos:exactMatch','1.0',42513392,'Neoplasm defined only by histology: Thymoma, type B2','Condition','ICDO3','ICDO Condition','S','8584/3-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL),
  (4029517,'Thymoma, type B3','Observation','SNOMED','Morph Abnormality',NULL,'128715000',DATE '2002-01-31',DATE '2022-01-31','U','Maps to','skos:exactMatch','1.0',42513393,'Neoplasm defined only by histology: Thymoma, type B3','Condition','ICDO3','ICDO Condition','S','8585/3-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL),
  (4245698,'Tumor metastasis to non-regional lymph nodes absent','Condition','SNOMED','Clinical Finding','S','396788005',DATE '2003-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769243,'Distant spread to lymph node','Measurement','Cancer Modifier','Nodes','S','OMOP4998920',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (4245698,'Tumor metastasis to non-regional lymph nodes absent','Condition','SNOMED','Clinical Finding','S','396788005',DATE '2003-07-31',DATE '2099-12-31',NULL,'Maps to value','skos:exactMatchValue','1.0',9189,'Negative','Meas Value','SNOMED','Qualifier Value','S','260385009',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4245697,'Tumor metastasis to non-regional lymph nodes present','Condition','SNOMED','Clinical Finding','S','396787000',DATE '2003-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769243,'Distant spread to lymph node','Measurement','Cancer Modifier','Nodes','S','OMOP4998920',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (4245697,'Tumor metastasis to non-regional lymph nodes present','Condition','SNOMED','Clinical Finding','S','396787000',DATE '2003-07-31',DATE '2099-12-31',NULL,'Maps to value','skos:exactMatchValue','1.0',4181412,'Present','Meas Value','SNOMED','Qualifier Value','S','52101004',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4263144,'Tumor size, largest metastasis','Measurement','SNOMED','Observable Entity','S','396791005',DATE '2003-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769180,'Metastasis','Measurement','Cancer Modifier','Metastasis','S','OMOP4998856',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (4263144,'Tumor size, largest metastasis','Measurement','SNOMED','Observable Entity','S','396791005',DATE '2003-07-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',36769446,'Dimension of Largest Metastasis','Measurement','Cancer Modifier','Dimension','S','OMOP4999122',DATE '2020-09-23',DATE '2099-12-31',NULL),
  (4168514,'Uveal metastasis','Measurement','SNOMED','Staging / Scales','S','417957003',DATE '2006-01-31',DATE '2099-12-31',NULL,'Maps to','skos:exactMatch','1.0',35225584,'Metastasis to uveal tract','Measurement','Cancer Modifier','Metastasis','S','OMOP5031993',DATE '2020-10-13',DATE '2099-12-31',NULL),
  (196181,'Tumor of uterine body - baby delivered','Condition','SNOMED','Disorder',NULL,'267221002',DATE '2002-01-31',DATE '2023-01-31','D','Maps to','skos:exactMatch','1.0',433260,'Mother delivered','Condition','SNOMED','Clinical Finding','S','289256000',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (196181,'Tumor of uterine body - baby delivered','Condition','SNOMED','Disorder',NULL,'267221002',DATE '2002-01-31',DATE '2023-01-31','D','Maps to','skos:exactMatch','1.0',4145940,'Tumor of uterine body in pregnancy, childbirth and the puerperium','Condition','SNOMED','Disorder','S','267219007',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (197049,'Tumor of uterine body - baby delivered with postpartum complication','Condition','SNOMED','Disorder',NULL,'267222009',DATE '2002-01-31',DATE '2023-01-31','D','Maps to','skos:exactMatch','1.0',433260,'Mother delivered','Condition','SNOMED','Clinical Finding','S','289256000',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (197049,'Tumor of uterine body - baby delivered with postpartum complication','Condition','SNOMED','Disorder',NULL,'267222009',DATE '2002-01-31',DATE '2023-01-31','D','Maps to','skos:exactMatch','1.0',4145940,'Tumor of uterine body in pregnancy, childbirth and the puerperium','Condition','SNOMED','Disorder','S','267219007',DATE '2002-01-31',DATE '2099-12-31',NULL),
  (4050832,'Acidophil adenoma','Observation','SNOMED','Morph Abnormality',NULL,'21109002',DATE '2002-01-31',DATE '2024-02-01','U','Maps to','skos:exactMatch','1.0',42513195,'Neoplasm defined only by histology: Acidophil adenoma','Condition','ICDO3','ICDO Condition','S','8280/0-NULL',DATE '2015-09-18',DATE '2099-12-31',NULL);

-------------------------
--DELETE WRONG MAPPINGS--
-------------------------
--onco_wg_proper_mapping_table
DELETE FROM dev_onco.onco_wg_proper_mapping_table
WHERE concept_id IN (
  4003184,4013824,4013824,4012811,4012811,
  3018971,3052487,3052487,3048665,3048665,
  3001208,3046802,3035299,36303310,36716849,
  36716849,2100741,2100818,2100692,2100693,
  2100795,2100652,2100653,2100624,2100932,
  2101062,2101594,2101596,2101593,2101592,
  2111226,2111224,2111225,2213285,42514447,
  42514417,4086004,3040862,21493735,21493734,
  4065512,4065512,3038857,3047564,3047364,
  44498759,4147086,4147096) ; --44
  
--onco_wg_list_of_items_for_mapping_or_curation_mapped
DELETE FROM dev_onco.onco_wg_list_of_items_for_mapping_or_curation_mapped
WHERE concept_id IN (
  4003184,4013824,4013824,4012811,4012811,
  3018971,3052487,3052487,3048665,3048665,
  3001208,3046802,3035299,36303310,36716849,
  36716849,2100741,2100818,2100692,2100693,
  2100795,2100652,2100653,2100624,2100932,
  2101062,2101594,2101596,2101593,2101592,
  2111226,2111224,2111225,2213285,42514447,
  42514417,4086004,3040862,21493735,21493734,
  4065512,4065512,3038857,3047564,3047364,
  44498759,4147086,4147096) ; --44
  
--onco_wg_proper_compact_unnested_mapping_maps_to_table
DELETE FROM dev_onco.onco_wg_proper_compact_unnested_mapping_maps_to_table
WHERE concept_id IN (
  4003184,4013824,4013824,4012811,4012811,
  3018971,3052487,3052487,3048665,3048665,
  3001208,3046802,3035299,36303310,36716849,
  36716849,2100741,2100818,2100692,2100693,
  2100795,2100652,2100653,2100624,2100932,
  2101062,2101594,2101596,2101593,2101592,
  2111226,2111224,2111225,2213285,42514447,
  42514417,4086004,3040862,21493735,21493734,
  4065512,4065512,3038857,3047564,3047364,
  44498759,4147086,4147096) ; --44
  
--delete concepts that already exists with correct relationship_id = 'Histolofy of ICDO3'
--onco_wg_proper_mapping_table
DELETE FROM dev_onco.onco_wg_proper_mapping_table
WHERE concept_id IN (36402259,36402342,36402891,36402913,36402914,36402945,36402946,36402960,36402977,36402989)
  AND target_concept_id IN (42514126,42514164,42514192,42514243,42514264,42514302,42514305,42514307,42514374,37167742) ; --10
  
--onco_wg_list_of_items_for_mapping_or_curation_mapped
DELETE FROM dev_onco.onco_wg_list_of_items_for_mapping_or_curation_mapped
WHERE concept_id IN (36402259,36402342,36402891,36402913,36402914,36402945,36402946,36402960,36402977,36402989)
  AND target_concept_id IN (42514126,42514164,42514192,42514243,42514264,42514302,42514305,42514307,42514374,37167742) ; --10
  
--onco_wg_proper_compact_unnested_mapping_maps_to_table
DELETE FROM dev_onco.onco_wg_proper_compact_unnested_mapping_maps_to_table
WHERE concept_id IN (36402259,36402342,36402891,36402913,36402914,36402945,36402946,36402960,36402977,36402989)
  AND target_concept_id IN (42514126,42514164,42514192,42514243,42514264,42514302,42514305,42514307,42514374,37167742) ; --10

--delete LOINC procedures   
DELETE FROM onco_wg_proper_mapping_table
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

DELETE FROM onco_wg_list_of_items_for_mapping_or_curation_mapped
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

DELETE FROM onco_wg_proper_compact_unnested_mapping_maps_to_table
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
FROM onco_wg_proper_mapping_table
WHERE CTID NOT IN (
	SELECT MIN(CTID)
  FROM onco_wg_proper_mapping_table
	GROUP BY concept_id,relationship_id,target_concept_id) ; --0
	
--remove duplicates from onco_wg_list_of_items_for_mapping_or_curation_mapped
DELETE
FROM onco_wg_list_of_items_for_mapping_or_curation_mapped 
WHERE CTID NOT IN (
	SELECT MIN(CTID)
  FROM onco_wg_list_of_items_for_mapping_or_curation_mapped
	GROUP BY concept_id,to_value,target_concept_id); --0

--remove duplicates from onco_wg_proper_compact_unnested_mapping_maps_to_table
DELETE
FROM onco_wg_proper_compact_unnested_mapping_maps_to_table 
WHERE CTID NOT IN (
	SELECT MIN(CTID)
  FROM onco_wg_proper_compact_unnested_mapping_maps_to_table
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
DELETE FROM onco_wg_proper_mapping_table
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
DELETE FROM onco_wg_list_of_items_for_mapping_or_curation_mapped
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
DELETE FROM onco_wg_proper_compact_unnested_mapping_maps_to_table
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
