# Analysis of Vocabulary Updates

Table 1 summarizes how concepts within vocabularies (HCPCD, ICDO3, LOINC, NAACCR, SNOMED) have changed their standardness after generic_update().

|Vocabulary ID|Old Standard Concept|New Standard Concept|Count|
|---|---|---|---|
|HCPCS|Standard|Non-standard with mapping|4|
|ICDO3|Standard|Non-standard with mapping|1|
|LOINC|Standard|Non-standard with mapping|82|
|NAACCR|Standard|Non-standard with mapping|141|
|SNOMED|Standard|Non-standard with mapping|62|

Table 1. Difference in standardness after generic_update().



---



Table 2 outlines target domain changes withing vocabularies (HCPCD, ICDO3, LOINC, NAACCR, SNOMED) after generic_update().

|Vocabulary ID|Old Domain|New Domain|Count|
|---|---|---|---|
|HCPCS|Condition|Condition/Measurement|3|
|HCPCS|Observation|Measurement|4|
|HCPCS|Procedure|Measurement/Procedure|6|
|ICDO3|No mapping|Condition|3|
|ICDO3|Condition|Condition/Measurement|34|
|ICDO3|No mapping|Measurement|9|
|ICDO3|Measurement|Condition/Measurement|3|
|ICDO3|No mapping|Condition/Measurement|1|
|LOINC|Meas Value|Measurement|82|
|NAACCR|Meas Value|Measurement|141|
|SNOMED|Measurement|Condition/Measurement|8|
|SNOMED|Condition|Condition/Measurement|50|
|SNOMED|No mapping|Condition|4|
|SNOMED|No mapping|Observation|12|
|SNOMED|Procedure|Measurement/Procedure|1|
|SNOMED|Procedure|Observation/Procedure|1|
|SNOMED|Meas Value|Measurement|186|
|SNOMED|Observation|Measurement|4|
|SNOMED|Procedure|Drug/Procedure|1|
|SNOMED|Observation|Condition/Observation|2|
|SNOMED|Condition|Condition/Observation|1|
|SNOMED|No mapping|Drug|4|
|SNOMED|No mapping|Measurement|2|
|SNOMED|No mapping|Procedure|7|
|SNOMED|Drug|Drug/Observation|1|
|SNOMED|Condition|Measurement|7|
|SNOMED|No mapping|Device|5|

Table 2. Differences in target domains after generic_update().



---



Table 3 outlines the pairs of Standard Concept (S), non-Standard Concept (NULL) and Classification Concept (C) concepts among concept_ancestors in dev_onco (working scheme) and devv5

|Category|dev_onco|devv5|Difference (absoulte)|Difference (percent)|
|---|---|---|---|---|
|C-C|1606830|1599309|7521|0,00470265596|
|C-S|67790443|67662364|128079|0,001892913467|
|C-NULL|724|724|0|0|
|S-C|177325|177391|-66|-0,0003720594619|
|S-S|31264790|31266150|-1360|-0,00004349752048|
|NULL-S|90|123|-33|-0,2682926829|
|NULL-NULL|NULL|1|-1|-1|

Table 3. Concept_ancestor difference among schemas

**Note!** All non-Standard entities among concept_acnestor are represented by ATC, RxNorm and RxNorm Extension drugs and do not relate to Oncology vocabularies refresh.
