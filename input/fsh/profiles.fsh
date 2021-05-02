
//====== Profiles =====================================


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CompositionDGC
Parent: $clinicaldocument
Id: Composition-dgc
Title: "Composition (Digital Green Certificate)"
Description: "This profile defines how to represent a vaccination certificate in FHIR by using a Composition resource"
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

* ^publisher = "Giorgio Cangioli"
* ^purpose = "An International Patient Summary (IPS) document is an electronic health record extract containing essential healthcare information about a subject of care, comprising at least the required elements of the IPS dataset. The IPS dataset is minimal and non-exhaustive; specialty-agnostic and condition-independent; but still clinically relevant. As specified in EN 17269 and ISO/DIS 27269, it is designed for supporting the use case scenario for ‘unplanned, cross border care’, but it is not limited to it. It is intended to be international, i.e., to provide generic solutions for global application beyond a particular region or country."
* . MS
* . ^short = "Digital Green Certificate composition"
* . ^definition = "Digital Green Certificate composition. \r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."
* text MS
* identifier MS
* status MS
* type only $CodeableConcept-uv-ips
* type = $loinc#82593-5
* type MS
* type ^short = "Kind of composition (\"Digital Green Certificate\")"
* type ^definition = "Specifies that this composition refers to a Digital Green Certificate (Loinc \"11369-6\")"
* subject only Reference($Patient-uv-ips)
* subject MS
* subject ^definition = "Who or what the composition is about. \r\nIn general a composition can be about a person, (patient or healthcare practitioner), a device (e.g. a machine) or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure).\r\nFor the IPS the subject is always the patient."
* subject.reference 1.. MS
* date MS
* author ^short = "Who and/or what authored the Digital Green Certificate"
* author ^definition = "Identifies who is responsible for the information in the Digital Green Certificate, not necessarily who typed it in."
* title MS
* title ^short = "Digital Green Certificate"
* title ^definition = "Official human-readable label for the composition.\r\n\r\nFor this document should be \"Digital Green Certificate\" or any equivalent translation"
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
* section ^short = "Sections composing the Digital Green Certificate"
* section ^definition = "The root of the sections that make up the Digital Green Certificate composition."
* section contains   sectionImmunizations 0..1 and sectionResults 0..1


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
* section[sectionImmunizations].entry[immunization] only Reference(ImmunizationDGC)
* section[sectionImmunizations].emptyReason ..0
* section[sectionImmunizations].emptyReason ^mustSupport = false
* section[sectionImmunizations].section ..0
* section[sectionImmunizations].section ^mustSupport = false

// * section[sectionImmunizations].entry[immunizationRecommendation] 0..
* section[sectionImmunizations].entry[immunizationRecommendation] only Reference(ImmunizationRecommendationDGC)
* section[sectionImmunizations].emptyReason ..0
* section[sectionImmunizations].emptyReason ^mustSupport = false
* section[sectionImmunizations].section ..0
* section[sectionImmunizations].section ^mustSupport = false

//--------------------

* section[sectionResults] ^short = "Results Section"
* section[sectionResults] ^definition = "The Results Section lists the test results relevant for the purpose of this certificate"
* section[sectionResults].title 1.. MS
* section[sectionResults].code 1.. MS
* section[sectionResults].code only $CodeableConcept-uv-ips
* section[sectionResults].code = $loinc#30954-2
* section[sectionResults].text 1.. MS
* section[sectionResults].text only Narrative
* section[sectionResults].entry 1.. MS
* section[sectionResults].entry ^slicing.discriminator[0].type = #profile
* section[sectionResults].entry ^slicing.discriminator[0].path = "$this.resolve()"
* section[sectionResults].entry ^slicing.discriminator[1].type = #type
* section[sectionResults].entry ^slicing.discriminator[1].path = "$this.resolve()"
* section[sectionResults].entry ^slicing.rules = #open
* section[sectionResults].entry ^short = "Test result relevant for the purpose of this certificate"
* section[sectionResults].entry ^definition = "Relevant observation results collected on the patient or produced on in-vitro biologic specimens collected from the patient. Some of these results may be laboratory results, others may be anatomic pathology results, others, radiology results, and others, clinical results."
* section[sectionResults].entry contains observation 0.. MS and diagnosticReport 0..
// * section[sectionResults].entry[observation] 0..
* section[sectionResults].entry[observation] only Reference(ObservationDGC)
* section[sectionResults].emptyReason ..0
* section[sectionResults].emptyReason ^mustSupport = false
* section[sectionResults].section ..0
* section[sectionResults].section ^mustSupport = false

// * section[sectionResults].entry[diagnosticReport] 0..
* section[sectionResults].entry[diagnosticReport] only Reference(DiagnosticReport)
* section[sectionResults].emptyReason ..0
* section[sectionResults].emptyReason ^mustSupport = false
* section[sectionResults].section ..0
* section[sectionResults].section ^mustSupport = false


//++++++++++++++++++++++++++++++++++++++++++
Profile:  PatientDGC
Parent:   $Patient-uv-ips
Id:       Patient-dgc
Title:    "Patient (Digital Green Certificate)"
Description: "This profile defines how to represent Patient Data in a Digital Green Certificate."
//-------------------------------------------------------------------------------------------

// ---- maps are defined in the mapping.fsh file

//++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationDGC
Parent:   $Observation-results-uv-ips
Id:       Observation-dgc
Title:    "Observation - Test Result (Digital Green Certificate)"
Description: "This profile defines how to represent Test Results in a Digital Green Certificate."
//-------------------------------------------------------------------------------------------
* subject only Reference($Patient-uv-ips)
* code from LoincCovid19Tests (extensible)
* effective[x] only dateTime

//++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationCovidImmunity
Parent:   Observation
Id:       Observation-CovidImmunity
Title:    "Observation - Covid Immunity"
Description: "This profile defines how to represent Covid with (presumed) Immunity in a Digital Green Certificate."
//-------------------------------------------------------------------------------------------
* subject only Reference(PatientDGC)
* code from LoincDiseaseWithImmunity (extensible)
* effective[x] only dateTime
* valueCodeableConcept = $sct#840539006



/*++++++++++++++++++++++++++ NOT USED FOR THE TIME BEING ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ImmunizationNotDone
Parent:   Immunization
Id:       Immunization-notDone-dgc
Title:    "Immunization (Digital Green Certificate)"
Description: "This profile defines how to represent Immunizations in FHIR for representing in a Digital Green Certificate a not given immunization."

//-------------------------------------------------------------------------------------------

* vaccineCode MS
* status = #not-done
* statusReason MS
* patient MS
* protocolApplied.doseNumber[x] MS
* protocolApplied.seriesDoses[x] MS

==== */

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ImmunizationDGC
Parent:   $Immunization-uv-ips
Id:       Immunization-dgc
Title:    "Immunization (Digital Green Certificate)"
Description: "This profile defines how to represent Immunizations in FHIR for building a Digital Green Certificate."

//-------------------------------------------------------------------------------------------

* vaccineCode.coding ^slicing.discriminator[0].type = #pattern
* vaccineCode.coding ^slicing.discriminator[0].path = "$this"
* vaccineCode.coding ^slicing.ordered = false
* vaccineCode.coding ^slicing.rules = #open
* vaccineCode.coding ^short = "Type of vaccine"
* vaccineCode.coding ^definition = "Vaccine code: it might be a code describing the kind of vaccine (e.g. ATC, ICD 11); it might be one of the IDMP identifiers; it might be a jurisdictional product code"
* vaccineCode.coding contains   atcVaccines 0..1 and sctVaccines 0..1 // and icd11Vaccines 0..1
* vaccineCode.coding[atcVaccines] from AtcCovid19Vaccines
* vaccineCode.coding[sctVaccines] from SctCovid19Vaccines
//* vaccineCode.coding[icd11Vaccines] from Icd11Covid19Vaccines  icd11 has not been selected by SGS

* vaccineCode.text ^short = "Name of the vaccine" // brandName

* patient MS
* occurrenceDateTime MS
* location MS // check is really needed
* location only Reference(LocationDGC)
// * manufacturer MS
// * lotNumber MS
* performer MS
// * protocolApplied.targetDisease MS
// * protocolApplied.targetDisease MS
* protocolApplied.targetDisease.coding ^slicing.discriminator[0].type = #pattern
* protocolApplied.targetDisease.coding ^slicing.discriminator[0].path = "$this"
* protocolApplied.targetDisease.coding ^slicing.ordered = false
* protocolApplied.targetDisease.coding ^slicing.rules = #open
* protocolApplied.targetDisease.coding contains sctCovid19Diseases 1..1
* protocolApplied.targetDisease.coding[sctCovid19Diseases] MS
* protocolApplied.targetDisease.coding[sctCovid19Diseases] from Covid19Diseases
* protocolApplied.doseNumberPositiveInt MS
* protocolApplied.seriesDosesPositiveInt MS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ImmunizationRecommendationDGC
Parent:   ImmunizationRecommendation
Id:       ImmunizationRecommendation-dgc
Title:    "ImmunizationRecommendation (Digital Green Certificate)"
Description: "This profile defines how to represent Immunization Recommandations in FHIR for building a Digital Green Certificate."
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
Profile:  LocationDGC
Parent:   Location
Id:       Location-dgc
Title:    "Location (Digital Green Certificate)"
Description: "This profile defines how to represent Location in FHIR for building a Digital Green Certificate. This is used to describe optionally where the vaccination occured"

//-------------------------------------------------------------------------------------------
* address.country 1..1 MS


/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  BinaryQRDGC
Parent:   Binary
Id:       Binary-qr-dgc
Title:    "Binary QR code (Digital Green Certificate)"
Description: "This profile defines how to represent the Digital Green Certificate QR code with a Binary resource"

//-------------------------------------------------------------------------------------------
* contentType	MS // Σ	1..1	code	MimeType of the binary content ADD MIME types used
// * securityContext	0..1	Reference(Any)	Identifies another resource to use as proxy when enforcing access control
* data	1..1 MS //	base64Binary	The actual content

==== */


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  BundleDGC
Parent: Bundle
Id: Bundle-dgc
Title: "Bundle (Digital Green Certificate)"
Description: "This profile defines how to represent a vaccination certificate in FHIR by using a Bundle resource"
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

* ^publisher = "Giorgio Cangioli"
* ^purpose = "The Digital Green Certificate is designed to facilitate safe free movement inside the EU during the COVID-19 pandemic. The Digital Green Certificate will be a proof that a person has been vaccinated against COVID-19, received a negative test result or recovered from COVID-19"
* . MS
* . ^short = "Digital Green Certificate Bundle"
* . ^definition = "Digital Green Certificate Bundle. \r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."
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
	patient 1..1	MS and
	immunization 0.. MS and
	immunizationRecommendation 0.. MS and
	testResult 0.. MS 
	and immunity 0.. MS
	// and	binary 0..

* entry[composition].resource 1..1 MS
* entry[composition].resource only CompositionDGC

* entry[patient].resource 1..1 MS
* entry[patient].resource only PatientDGC

* entry[immunization].resource 1..1 MS
// * entry[immunization].resource only ImmunizationDGC or ImmunizationNotDone
* entry[immunization].resource only ImmunizationDGC

* entry[immunizationRecommendation].resource 1..1 MS
* entry[immunizationRecommendation].resource only ImmunizationRecommendationDGC

* entry[testResult].resource 1..1 MS
* entry[testResult].resource only ObservationDGC

* entry[immunity].resource 1..1 MS
* entry[immunity].resource only ObservationCovidImmunity

// * entry[binary].resource 1..1 MS
// * entry[binary].resource only BinaryQRDGC


