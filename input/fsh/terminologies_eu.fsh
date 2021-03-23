Alias: SCT = http://snomed.info/sct
Alias: ATC = http://www.whocc.no/atc
Alias: EMA = http://ema.europa.eu/registration
Alias: LOINC = http://loinc.org
Alias: NULLFLAVOR = http://terminology.hl7.org/CodeSystem/v3-NullFlavor
Alias: ICD10int = http://hl7.org/fhir/sid/icd-10


//------------------------------------------------

ValueSet:      Covid19Vaccines
Id:	       vaccines-covid-19
Title:	       "Vaccine List (COVID-19)"
Description:   "Vaccine List (COVID-19)"
* ^status = #draft
// * SCT#1142178009 "SARS-CoV-2 vaccine"
* SCT#1119349007 "SARS-CoV-2 mRNA vaccine"
* SCT#1119305005 "SARS-CoV-2 antigen vaccine"
* ATC#J07BX03 "covid-19 vaccines"

Instance: Covid19VaccinesSnomedToICD11Map
InstanceOf: ConceptMap
Title:	       "COVID-19 Vaccines SSNOMED CT To ICD11 Map"
Description:   "COVID-19 Vaccines SSNOMED CT To ICD11 Map"
* status = #draft
* sourceUri = SCT
* targetUri = "http://id.who.int/icd11/mms" // is this correct? aren't these icd-11 codes from the foundation layer?
* group[+].element[+].code = #1119349007
* group[=].element[=].target[+].code = #hejsan
* group[=].element[=].target[=].equivalence = #equivalent
* group[+].element[+].code = #1119305005
* group[=].element[=].target[+].code = #hoppsan
* group[=].element[=].target[=].equivalence = #equivalent

//------------------------------------------------

ValueSet:      Covid19VaccineNames
Id:	       vaccines-covid-19-names
Title:	       "Vaccine Name List (COVID-19)"
Description:   "Vaccine Name List (COVID-19)"
// Are these codes correct and relevant, are there alternative codes?
// Source LOINC Parts file 5.1-Beta, LOINC 2.69
* ^status = #draft
* EMA#EMEA/H/C/005735 "Comirnaty"
* EMA#EMEA/H/C/005735 "COVID-19 Vaccine Moderna" // same code as Comirnaty
* EMA#EMEA/H/C/005675 "COVID-19 Vaccine AstraZeneca"
* EMA#EMEA/H/C/005737 "COVID-19 Vaccine Janssen"


//------------------------------------------------
// lab method/type value set
// nothing relevant in <<272394005 | Technique (qualifier value) | AND ^787778008 |Global Patient Set|
// map from SNOMED CT non-GPS -> LOINC part codes?

ValueSet:      Covid19LabMethods
Id:	       covid-19-lab-methods
Title:	       "COVID-19 Lab Methods"
Description:   "COVID-19 Laboratory Methods"
* ^status = #draft
* LOINC#LP6464-4 "Nucleic acid amplification with probe detection"
* LOINC#LP217198-3 "Rapid immunoassay"
* LOINC#LP6404-0 "Molecular genetics"
* LOINC#LP150045-5 "Sequencing"
* LOINC#LP217197-5 "Immunoassay"
* LOINC#LP6323-2 "Immunofluorescence (IF)"
* NULLFLAVOR#OTH "Other"

//------------------------------------------------
// disease or agent

ValueSet:      Covid19Diseases
Id:	       covid-19-diseases
Title:	       "COVID-19 Diseases"
Description:   "COVID-19 Diseases"
* ^status = #draft
* SCT#840539006 "COVID-19"
* ICD10int#U07.1
* ICD10int#U07.2

ValueSet:      Covid19Agents
Id:	       covid-19-agents
Title:	       "COVID-19 Agents"
Description:   "COVID-19 Agents"
* ^status = #draft
* SCT#840533007 "SARS-CoV-2"



