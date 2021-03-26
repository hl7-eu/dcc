Instance: Covid19LabTestsNPUToLOINCMap
InstanceOf: ConceptMap
Title:	       "COVID-19 Lab Tests NPU to LOINC Map"
Description:   "COVID-19 Lab Tests NPU to LOINC Map"
Usage: #definition

* version = "4.0.1"
* name = "Covid19LabTestsNPUToLOINCMap"
* title = "COVID-19 Lab Tests NPU to LOINC Map"
* status = #draft
* experimental = false
* description = "COVID-19 Lab Tests NPU to LOINC Map"

* sourceUri = "http://npu-terminology.org"
* targetUri = "http://loinc.org"
* group[+].element[+].code = #NPU59310
* group[=].element[=].target[+].code = #94558-4
* group[=].element[=].target[=].equivalence = #wider
