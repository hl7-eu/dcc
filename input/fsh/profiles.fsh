//============== ALIAS ===============
Alias: temp_profile = http://hl7.org/fhir/StructureDefinition/bodytemp
Alias: os_profile = http://hl7.org/fhir/StructureDefinition/oxygensat
Alias: bp_profile = http://hl7.org/fhir/StructureDefinition/bp
Alias: hr_profile = http://hl7.org/fhir/StructureDefinition/heartrate
Alias: vs_profile = http://hl7.org/fhir/StructureDefinition/vitalsigns
Alias: ips_result = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-uv-ips
Alias: ips_lab_result = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-laboratory-uv-ips
Alias: ips_path_result = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-pathology-uv-ips
Alias: ips_rad_result = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-radiology-uv-ips
Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Alias: $MedicationStatement-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips
Alias: $Immunization-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips
Alias: $clinicaldocument = http://hl7.org/fhir/StructureDefinition/clinicaldocument
Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips




//====== Profiles =====================================




//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CompositionSvc
Parent: $clinicaldocument
Id: Composition-svc
Title: "Composition (SVC)"
Description: "This profile defines how to represent a vaccination certificate in FHIR by using a Composition resource"
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

* ^publisher = "Giorgio Cangioli"
* ^purpose = "An International Patient Summary (IPS) document is an electronic health record extract containing essential healthcare information about a subject of care, comprising at least the required elements of the IPS dataset. The IPS dataset is minimal and non-exhaustive; specialty-agnostic and condition-independent; but still clinically relevant. As specified in EN 17269 and ISO/DIS 27269, it is designed for supporting the use case scenario for ‘unplanned, cross border care’, but it is not limited to it. It is intended to be international, i.e., to provide generic solutions for global application beyond a particular region or country."
* . MS
* . ^short = "Smart Vaccination Card composition"
* . ^definition = "Smart Vaccination Card composition. \r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."
* text MS
* identifier MS
* status MS
* type only $CodeableConcept-uv-ips
* type = $loinc#82593-5  
* type MS
* type ^short = "Kind of composition (\"Smart Vaccination Card\")"
* type ^definition = "Specifies that this composition refers to a Smart Vaccination Card (Loinc \"11369-6\")"
* subject only Reference($Patient-uv-ips)
* subject MS
* subject ^definition = "Who or what the composition is about. \r\nIn general a composition can be about a person, (patient or healthcare practitioner), a device (e.g. a machine) or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure).\r\nFor the IPS the subject is always the patient."
* subject.reference 1.. MS
* date MS
* author ^short = "Who and/or what authored the SVC"
* author ^definition = "Identifies who is responsible for the information in the SVC, not necessarily who typed it in."
* title MS
* title ^short = "Smart Vaccination Card"
* title ^definition = "Official human-readable label for the composition.\r\n\r\nFor this document should be \"Smart Vaccination Card\" or any equivalent translation"
* attester MS
* attester.mode MS
* attester.time MS
* attester.party MS

* section 1.. MS
* section ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section ^extension[0].valueString = "Section"
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[0].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section ^short = "Sections composing the SVC"
* section ^definition = "The root of the sections that make up the SVC composition."
* section contains   sectionImmunizations 1..1 MS
 

* section[sectionImmunizations] ^short = "Immunizations Section"
* section[sectionImmunizations] ^definition = "The Immunizations Section lists the relevant vaccinations taken by a patient's."
* section[sectionImmunizations].title 1.. MS
* section[sectionImmunizations].code 1.. MS
* section[sectionImmunizations].code only $CodeableConcept-uv-ips
* section[sectionImmunizations].code = $loinc#11369-6
* section[sectionImmunizations].text 1.. MS
* section[sectionImmunizations].text only Narrative
* section[sectionImmunizations].entry 1.. MS
* section[sectionImmunizations].entry ^slicing.discriminator[0].type = #profile
* section[sectionImmunizations].entry ^slicing.discriminator[0].path = "$this.resolve()"
* section[sectionImmunizations].entry ^slicing.rules = #open
* section[sectionImmunizations].entry ^short = "Patient's immunization status and pertinent history."
* section[sectionImmunizations].entry ^definition = "It defines the patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\nIt may contain the entire immunization history that is relevant to the period of time being summarized. This entry shall be used to document that no information about immunizations is available, or that no immunizations are known."
* section[sectionImmunizations].entry contains immunization 0.. MS and immunizationRecommendation 0.. MS
// * section[sectionImmunizations].entry[immunization] 0..
* section[sectionImmunizations].entry[immunization] only Reference(ImmunizationSvc)
* section[sectionImmunizations].emptyReason ..0
* section[sectionImmunizations].emptyReason ^mustSupport = false
* section[sectionImmunizations].section ..0
* section[sectionImmunizations].section ^mustSupport = false

// * section[sectionImmunizations].entry[immunizationRecommendation] 0..
* section[sectionImmunizations].entry[immunizationRecommendation] only Reference(ImmunizationRecommendationSvc)
* section[sectionImmunizations].emptyReason ..0
* section[sectionImmunizations].emptyReason ^mustSupport = false
* section[sectionImmunizations].section ..0
* section[sectionImmunizations].section ^mustSupport = false


/*++++++++++++++++++++++++++ NOT USED FOR THE TIME BEING ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ImmunizationNotDone
Parent:   Immunization
Id:       Immunization-notDone-svc
Title:    "Immunization (SVC)"
Description: "This profile defines how to represent Immunizations in FHIR for representing in a Smart vaccination Certificate a not given immunization."

//-------------------------------------------------------------------------------------------

* vaccineCode MS
* status = #not-done
* statusReason MS
* patient MS
* protocolApplied.doseNumber[x] MS
* protocolApplied.seriesDoses[x] MS

==== */

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ImmunizationSvc
Parent:   $Immunization-uv-ips
Id:       Immunization-svc
Title:    "Immunization (SVC)"
Description: "This profile defines how to represent Immunizations in FHIR for building a Smart vaccination Card."

//-------------------------------------------------------------------------------------------

* vaccineCode MS
* vaccineCode.text 0..1 MS // brandName
* patient MS
* occurrenceDateTime MS
* location MS // check is really needed
* location only Reference(LocationSvc)
* manufacturer MS
* lotNumber MS
* performer MS
* protocolApplied.targetDisease MS
* protocolApplied.doseNumber[x] MS
* protocolApplied.seriesDoses[x] MS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ImmunizationRecommendationSvc
Parent:   ImmunizationRecommendation
Id:       ImmunizationRecommendation-svc
Title:    "ImmunizationRecommendation (SVC)"
Description: "This profile defines how to represent Immunization Recommandations in FHIR for building a Smart vaccination Card."
//-------------------------------------------------------------------------------------------

* date MS
* patient MS
* recommendation.vaccineCode ^short = "Generic description of the vaccine/prophylaxis or its component(s)"
* recommendation.targetDisease ^short = "Disease or agent that the vaccination provides protection against"
* recommendation.forecastStatus MS
* recommendation.dateCriterion ^slicing.discriminator[0].type = #pattern
* recommendation.dateCriterion ^slicing.discriminator[0].path = "code"
* recommendation.dateCriterion ^slicing.rules = #open
* recommendation.dateCriterion contains nextDose ..1
* recommendation.dateCriterion[nextDose].code = $loinc#30980-7
* recommendation.dateCriterion[nextDose].value 1..1

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  LocationSvc
Parent:   Location
Id:       Location-svc
Title:    "Location (SVC)"
Description: "This profile defines how to represent Location in FHIR for building a Smart vaccination Card. This is used to describe optionally where the vaccination occured"

//-------------------------------------------------------------------------------------------

* address.country 1..1 MS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  BundleSvc
Parent: Bundle
Id: Bundle-svc
Title: "Bundle (SVC)"
Description: "This profile defines how to represent a vaccination certificate in FHIR by using a Bundle resource"
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

* ^publisher = "Giorgio Cangioli"
* ^purpose = "An International Patient Summary (IPS) document is an electronic health record extract containing essential healthcare information about a subject of care, comprising at least the required elements of the IPS dataset. The IPS dataset is minimal and non-exhaustive; specialty-agnostic and condition-independent; but still clinically relevant. As specified in EN 17269 and ISO/DIS 27269, it is designed for supporting the use case scenario for ‘unplanned, cross border care’, but it is not limited to it. It is intended to be international, i.e., to provide generic solutions for global application beyond a particular region or country."
* . MS
* . ^short = "Smart Vaccination Card Bundle"
* . ^definition = "Smart Vaccination Card Bundle. \r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."
* identifier 1.. MS
* identifier.system = "http://hl7.eu/fhir/sid/uvci" // temporary solution
* identifier.system ^short = "(temporary URL)" 
* identifier.period MS
* type = #document
* type MS
* timestamp MS
* entry 2.. MS
* entry.fullUrl 1.. MS
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open
* entry ^short = "Entries to be included in this bundle."
* entry ^definition = "It lists and describes the types of entries allowed for this document."

* entry contains 
	composition  1..1 MS and  
	immunization 0.. MS and
	immunizationRecommendation 0.. MS

* entry[composition].resource 1..1 MS
* entry[composition].resource only CompositionSvc
	
* entry[immunization].resource 1..1 MS
// * entry[immunization].resource only ImmunizationSvc or ImmunizationNotDone
* entry[immunization].resource only ImmunizationSvc

* entry[immunizationRecommendation].resource 1..1 MS
* entry[immunizationRecommendation].resource only ImmunizationRecommendationSvc



 
