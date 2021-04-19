




//------------------------------------------------

ValueSet:      Covid19Vaccines
Id:	       vaccines-covid-19
Title:	       "Vaccine List (COVID-19)"
Description:   "Vaccine List (COVID-19)"
* ^status = #draft
// * $sct#1142178009 "SARS-CoV-2 vaccine"
* $sct#1119349007 "SARS-CoV-2 mRNA vaccine"
* $sct#1119305005 "SARS-CoV-2 antigen vaccine"
* $atc#J07BX03 "covid-19 vaccines"

//------------------------------------------------
Instance: Covid19VaccinesSnomedToICD11Map
InstanceOf: ConceptMap
Title:	       "COVID-19 Vaccines SNOMED CT To ICD11 Map"
Description:   "COVID-19 Vaccines SNOMED CT To ICD11 Map"

* name = "Covid19VaccinesSnomedToICD11Map"
* title = "COVID-19 Vaccines SNOMED CT To ICD11 Map"
* status = #draft
* description = "COVID-19 Vaccines SNOMED CT To ICD11 Map"
* sourceUri = $sct
* targetUri = "http://id.who.int/icd11/mms" // MMS, or should it be Foundation Component?
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
* ^status = #draft
* $ema#EU/1/20/1528 "Comirnaty"
* $ema#EU/1/20/1507 "COVID-19 Vaccine Moderna"
// https://www.ema.europa.eu/en/medicines/human/EPAR/vaxzevria-previously-covid-19-vaccine-astrazeneca
* $ema#EU/1/21/1529 "Vaxzevria"
* $ema#EU/1/20/1525	 "COVID-19 Vaccine Janssen"
* $tempVaccine-eu#sputnik-v "Sputnik V"
* $tempVaccine-eu#CVnCoV "CVnCoV"
* $tempVaccine-eu#Convidecia "Convidecia"
* $tempVaccine-eu#EpiVacCorona "EpiVacCorona"	
* $tempVaccine-eu#BBIBP-CorV "BBIBP-CorV"
* $tempVaccine-eu#CoronaVac "CoronaVac" 


ValueSet:      Covid19VaccineAuthHolders
Id:	       vaccines-covid-19-auth-holders
Title:	       "Vaccine marketing authorization holder or Vaccine manufacturer (COVID-19)"
Description:   "Vaccine marketing authorization holder or Vaccine manufacturer (COVID-19)"
// Are these codes correct and relevant, are there alternative codes?
* ^status = #draft
* $spor#ORG-100001699	"AstraZeneca AB"
* $spor#ORG-100030215	"Biontech Manufacturing GmbH"
* $spor#ORG-100001417	"Janssen-Cilag International"
* $spor#ORG-100031184	"Moderna Biotech Spain S.L."
* $spor#ORG-100006270	"Curevac AG"
* $spor#ORG-100013793	"CanSino Biologics"
* $spor#ORG-100020693	"China Sinopharm International Corp. - Beijing location"
* $spor#ORG-100010771	"Sinopharm Weiqida Europe Pharmaceutical s.r.o. - Prague location"
* $spor#ORG-100024420	"Sinopharm Zhijun (Shenzhen) Pharmaceutical Co. Ltd. - Shenzhen location"
* $spor#ORG-100032020	"Novavax CZ AS"

//------------------------------------------------
// lab method/type value set
// nothing relevant in <<272394005 | Technique (qualifier value) | AND ^787778008 |Global Patient Set|
// map from SNOMED CT non-GPS -> $loinc part codes?

ValueSet:      Covid19LabMethods
Id:	       covid-19-lab-methods
Title:	       "COVID-19 Lab Methods"
Description:   "COVID-19 Laboratory Methods"
* ^status = #draft
* $loinc#LP6464-4 "Nucleic acid amplification with probe detection"
* $loinc#LP217198-3 "Rapid immunoassay"
// * $loinc#LP6404-0 "Molecular genetics"
// * $loinc#LP150045-5 "Sequencing"
// * $loinc#LP217197-5 "Immunoassay"
// * $loinc#LP6323-2 "Immunofluorescence (IF)"
// * $v3-NullFlavor#OTH "Other"

//------------------------------------------------
// disease or agent

ValueSet:      Covid19Diseases
Id:	       covid-19-diseases
Title:	       "COVID-19 Diseases"
Description:   "COVID-19 Diseases"
* ^status = #draft
* $sct#840539006 "COVID-19"
// * $icd-10#U07.1 "COVID-19, virus identified"
// * $icd-10#U07.2 "COVID-19, virus not identified"

// ValueSet:      Covid19Agents
// Id:	       covid-19-agents
// Title:	       "COVID-19 Agents"
// Description:   "COVID-19 Agents"
// * ^status = #draft
// * $sct#840533007 "SARS-CoV-2"

//------------------------------------------------
// sample origin
// nasopharyngeal swab, oropharyngeal swab, nasal swab, saliva
// checked: all in SNOMED GPS
// Source: https://www.cdc.gov/csels/dls/sars-cov-2-livd-codes.html
/*
ValueSet:      Covid19SampleOrigin
Id:	       covid-19-sample-origin
Title:	       "COVID-19 Sample Origin"
Description:   "COVID-19 Sample Origin - Specimen types"
* ^status = #draft
* $sct#258500001 "Nasopharyngeal swab" 
* $sct#258411007 "Nasopharyngeal aspirate"
* $sct#258467004 "Nasopharyngeal washings"
* $sct#461911000124106 "Oropharyngeal swab" 
* $sct#472881004 "Pharyngeal swab"
* $sct#871810001 "Mid-turbinate nasal swab"
* $sct#445297001 "Swab of internal nose"
* $sct#697989009 "Anterior nares swab"
* $sct#258529004 "Throat swab"
* $sct#445447003 "Specimen from trachea obtained by aspiration"
* $sct#309171007 "Lower respiratory fluid sample"
* $sct#258607008 "Bronchoalveolar lavage fluid sample"
* $sct#119342007 "Saliva specimen"
* $sct#119334006 "Sputum specimen"
* $sct#119297000 "Blood specimen"
* $sct#119361006 "Plasma specimen"
* $sct#119364003 "Serum specimen"
* $sct#122555007 "Venous blood specimen"
* $sct#122592007 "Acellular blood (serum or plasma) specimen"
* $sct#122554006 "Capillary blood specimen"
* $sct#440500007 "Dried blood spot specimen"
*/

//------------------------------------------------
// result
// checked: all in SNOMED GPS
// cf. https://www.cdc.gov/csels/dls/sars-cov-2-livd-codes.html

ValueSet:      Covid19LabResult
Id:	       covid-19-lab-result
Title:	       "COVID-19 Lab Result"
Description:   "COVID-19 Lab Result"
* ^status = #draft
* $sct#1240581000000104	"Severe acute respiratory syndrome coronavirus 2 detected"
* $sct#1240591000000102 "Severe acute respiratory syndrome coronavirus 2 not detected"


//------------------------------------------------
// manufacturer and test name


ValueSet:      Covid19LabTestManufacturerAndName
Id:	       covid-19-lab-test-manufacturer-and-name
Title:	       "COVID-19 Lab Test Manufacturer And Name"
Description:   "Examples of COVID-19 Lab Test Manufacturer And Name from http://covid-19-diagnostics.jrc.ec.europa.eu/devices?manufacturer&text_name&marking&rapid_diag&format&target_type&field-1=HSC%20mutual%20recognition%20%28RAT%29&value-1=1&search_method=AND#form_content"
* ^status = #draft
* $jrc#1232 "Abbott Rapid Diagnostics Panbio™ COVID-19 Ag Rapid Test"
* $jrc#1065 "Becton Dickinson BD Veritor System for Rapid Deteciton os SARS-CoV-2"

// https://covid-19-diagnostics.jrc.ec.europa.eu/devices/detail/1232

/*
* #2 "AMEDA Labordiagnostik GmbH AMP Rapid Test SARS-CoV-2 Ag"
* #4 "Beijing Lepu Medical Technology SARS-CoV-2 Antigen Rapid Test Kit (Colloidal Gold immunochromatography)"
* #5 "Beijing Wantai Biological Pharmacy Enterprise Co Ltd WANTAI SARS-CoV-2 Ag Rapid Test (FIA)"
* #6 "BIONOTE NowCheck® COVID-19 Ag Test"
* #7 "BIOSYNEX SWISS SA BIOSYNEX COVID-19 Ag BSS"
* #8 "CerTest Biotect S.L. CerTest SARS-CoV-2 CARD TEST"
* #9 "GenBody Inc GenBody COVID-19 Ag Test"
* #10 "Guangdong Wesail Biotech Co. Ltd COVID-19 AG Test Kit"
* #11 "Hangzhou Clongene Biotech Clungene COVID-19 Antigen Rapid Test Kit"
* #12 "Healgen Scientific Limited Coronavirus Ag Rapid Test Cassette (Swab)"
* #13 "Joinstar Biomedical Technology COVID-19 Antigen Rapid Test (Colloidal Gold)"
* #14 "LumiraDX UK LTd LumiraDx SARS-CoV-2 Ag Test"
* #15 "MEDsan GmbH MEDsan® SARS-CoV-2 Antigen Rapid Test"
* #16 "MP Biomedicals Germany Rapid SARS-CoV-2 Antigen Test Card"
* #17 "nal von minden GmbH NADAL COVID -19 Ag Test"
* #18 "Precision Biosensor Inc (Axon Lab SG) Exdia COVI-19 Ag Test"
* #19 "Qingdao Hightop Biotech Co Ltd SARS-CoV-2 Antigen Rapid Test"
* #20 "Quidel Corporation Sofia 2 SARS Antigen FIA"
* #21 "Safecare Biotech Hangzhou Co COVID-19 Ag Rapid Test Kit (Swab)"
* #22 "SD BIOSENSOR, Inc.; Roche STANDARD F COVID-19 Ag FIA"
* #23 "SD BIOSENSOR, Inc.; Roche STANDARD Q COVID-19 Ag Test"
* #24 "Siemens Healthineers CLINITEST Rapid COVID-19 Antigen Test"
* #25 "Xiamen Boson Biotech Co Rapid SARS-CoV-2 Antigen Test card"
* #26 "Zhejiang Orient Gene Biotech Co.,Ltd Coronavirus Ag Rapid Test Cassette (Swab)"
*/
