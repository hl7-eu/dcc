Instance: who2eu-svc
InstanceOf: ConceptMap
Usage: #definition
// * url = "http://fhir.org/guides/who/svc/ConceptMap/who2eu-svc"
* version = "4.0.1"
* name = "ConceptMapWhoToEuSvc"
* title = "Model Mapping - WHO versus EU Smart Vaccination Certificate"
* status = #active
* experimental = false
* publisher = "Giorgio Cangioli"
* contact[0].name = "Giorgio Cangioli"
* contact[0].telecom[0].system = #email
* contact[0].telecom[0].value = "mailto:giorgio.cangioli@gmail.com"
* description = "Model Mapping - WHO versus EU Smart Vaccination Certificate"
* sourceUri = "http://fhir.org/guides/who/svc/StructureDefinition/vaccinationCertificate"
* targetUri = "http://hl7.eu/fhir/poc/svc/StructureDefinition/vaccinationCertificate"
* group[0].source = "http://fhir.org/guides/who/svc/StructureDefinition/vaccinationCertificate"
* group[0].target = "http://hl7.eu/fhir/poc/svc/StructureDefinition/vaccinationCertificate"
* group[0].element[0].code = #vaccinationCertificate
* group[0].element[0].display = "Smart Vaccination Card"
* group[0].element[0].target[0].code = #vaccinationCertificate
* group[0].element[0].target[0].display = "EU Vaccination Certificate"
* group[0].element[0].target[0].equivalence = #equivalent
* group[1].source = "http://fhir.org/guides/who/svc/StructureDefinition/vaccinationCertificate"
* group[1].target = "http://hl7.eu/fhir/poc/svc/StructureDefinition/vaccinationCertificate"
* group[1].element[0].code = #vaccinationCertificate.subject
* group[1].element[0].display = "Header - input once"
* group[1].element[0].target[0].code = #vaccinationCertificate.subject
* group[1].element[0].target[0].display = "Person identification"
* group[1].element[0].target[0].equivalence = #equivalent
* group[1].element[1].code = #vaccinationCertificate.vaccinationEvent
* group[1].element[1].display = "Data needed for each vaccination event"
* group[1].element[1].target[0].code = #vaccinationCertificate.vaccinationEvent
* group[1].element[1].target[0].display = "Vaccination / prophylaxis information"
* group[1].element[1].target[0].equivalence = #equivalent

/* === REMOVED IN THIS VERSION --------------
* group[1].element[2].code = #vaccinationCertificate.metaData
* group[1].element[2].display = "Certificate Metadata"
* group[1].element[2].target[0].code = #vaccinationCertificate.metaData
* group[1].element[2].target[0].display = "Certificate metadata"
* group[1].element[2].target[0].equivalence = #equivalent
----------------------------==== */

// ------------------------------------------
//  --------------- Subject ---------------
// ------------------------------------------
* group[2].source = "http://fhir.org/guides/who/svc/StructureDefinition/vaccinationCertificate"
* group[2].target = "http://hl7.eu/fhir/poc/svc/StructureDefinition/vaccinationCertificate"
* group[2].element[0].code = #vaccinationCertificate.subject
* group[2].element[0].display = "Header - input once"
* group[2].element[0].target[0].code = #vaccinationCertificate.subject
* group[2].element[0].target[0].display = "Person identification"
* group[2].element[0].target[0].equivalence = #equivalent
* group[2].element[1].code = #vaccinationCertificate.subject.name
* group[2].element[1].display = "Name"
* group[2].element[1].target[0].code = #vaccinationCertificate.subject.name
* group[2].element[1].target[0].display = "Person name"
* group[2].element[1].target[0].equivalence = #relatedto
* group[2].element[1].target[0].comment = "A single string in the WHO model; potentially a structured name for the EC one"
* group[2].element[2].code = #vaccinationCertificate.subject.birthDate
* group[2].element[2].display = "Date of birth"
* group[2].element[2].target[0].code = #vaccinationCertificate.subject.birthDate
* group[2].element[2].target[0].equivalence = #equal
* group[2].element[3].code = #vaccinationCertificate.subject.identifier
* group[2].element[3].display = "Unique identification"
* group[2].element[3].target[0].code = #vaccinationCertificate.subject.identifier
* group[2].element[3].target[0].display = "Person identifier"
* group[2].element[3].target[0].equivalence = #equivalent
* group[2].element[4].code = #vaccinationCertificate.subject.sex
* group[2].element[4].display = "Sex"
* group[2].element[4].target[0].code = #vaccinationCertificate.subject.sex
* group[2].element[4].target[0].display = "Sex"
* group[2].element[4].target[0].equivalence = #relatedto

// ------------------------------------------
//  --------------- vaccinationEvent ---------------
// ------------------------------------------
* group[3].source = "http://fhir.org/guides/who/svc/StructureDefinition/vaccinationCertificate"
* group[3].target = "http://hl7.eu/fhir/poc/svc/StructureDefinition/vaccinationCertificate"
* group[3].element[0].code = #vaccinationCertificate.vaccinationEvent
* group[3].element[0].display = "Data needed for each vaccination event"
* group[3].element[0].target[0].code = #vaccinationCertificate.vaccinationEvent
* group[3].element[0].target[0].display = "Vaccination / prophylaxis information"
* group[3].element[0].target[0].equivalence = #equivalent
* group[3].element[1].code = #vaccinationCertificate.vaccinationEvent.vaccineCode
* group[3].element[1].display = "Vaccine or prophylaxis"
* group[3].element[1].target[0].code = #vaccinationCertificate.vaccinationEvent.vaccineCode
* group[3].element[1].target[0].display = "Vaccine or prophylaxis"
* group[3].element[1].target[0].equivalence = #equivalent
* group[3].element[2].code = #vaccinationCertificate.vaccinationEvent.vaccineBrandName
* group[3].element[2].display = "Vaccine brand"
* group[3].element[2].target[0].code = #vaccinationCertificate.vaccinationEvent.vaccineProduct
* group[3].element[2].target[0].display = "Vaccine medicinal product"
* group[3].element[2].target[0].equivalence = #relatedto
// * group[3].element[2].target[0].comment = "Brand name in the WHO model; potentially a wider description of the product for EC model (the only info conveyed is however the product name)"
* group[3].element[3].code = #vaccinationCertificate.vaccinationEvent.vaccineManufacturer
* group[3].element[3].display = "Vaccine manufacturer"
* group[3].element[3].target[0].equivalence = #unmatched

* group[3].element[4].code = #vaccinationCertificate.vaccinationEvent.vaccineMarketingAuthorizationHolder
* group[3].element[4].display = "Vaccine vaccineMarketingAuthorizationHolder"
* group[3].element[4].target[0].code = #vaccinationCertificate.vaccinationEvent.vaccineMarketingAuthorizationHolder
* group[3].element[4].target[0].display = "Marketing Authorization Holder"
* group[3].element[4].target[0].equivalence = #equivalent
* group[3].element[4].target[0].comment = "Manufacturer or MAH for the WHO model; the Marketing Authorization Holder for the EC one."


* group[3].element[5].code = #vaccinationCertificate.vaccinationEvent.vaccineBatchNumber
* group[3].element[5].display = "Batch number of vaccine or prophylaxis"
* group[3].element[5].target[0].code = #vaccinationCertificate.vaccinationEvent.vaccineBatchNumber
* group[3].element[5].target[0].display = "Batch/lot number"
* group[3].element[5].target[0].equivalence = #equal

* group[3].element[6].code = #vaccinationCertificate.vaccinationEvent.dateOfVaccination
* group[3].element[6].display = "Date of vaccination"
* group[3].element[6].target[0].code = #vaccinationCertificate.vaccinationEvent.dateOfVaccination
* group[3].element[6].target[0].display = "Date of vaccination"
* group[3].element[6].target[0].equivalence = #equal

* group[3].element[7].code = #vaccinationCertificate.vaccinationEvent.doseNumber
* group[3].element[7].display = "Dose number"
* group[3].element[7].target[0].code = #vaccinationCertificate.vaccinationEvent.doseNumber
* group[3].element[7].target[0].display = "Number in a series of vaccinations / doses"
* group[3].element[7].target[0].equivalence = #wider
* group[3].element[7].target[0].comment = "The Eu model is not limited to the number, but refers the number in the series. Split in two distict FHIR elements"

* group[3].element[8].code = #vaccinationCertificate.vaccinationEvent.countryOfVaccination
* group[3].element[8].display = "Country of vaccination"
* group[3].element[8].target[0].code = #vaccinationCertificate.vaccinationEvent.countryOfVaccination
* group[3].element[8].target[0].display = "Country of vaccination"
* group[3].element[8].target[0].equivalence = #equal

* group[3].element[9].code = #vaccinationCertificate.vaccinationEvent.administeringCentre
* group[3].element[9].display = "Administering centre"
* group[3].element[9].target[0].code = #vaccinationCertificate.vaccinationEvent.administeringCentre
* group[3].element[9].target[0].display = "Administering centre"
* group[3].element[9].target[0].equivalence = #equivalent
* group[3].element[9].target[0].comment = "Check if the information of interest is where the vaccination was done, the organization certifying this vaccination; or the organization the health Worker/HP belong to. In the Who it seems to be the last one 'vaccination facility responsible for providing the vaccination'; less clear in the EU model."

* group[3].element[10].code = #vaccinationCertificate.vaccinationEvent.healthWorker.Signature
* group[3].element[10].display = "Signature of health worker"
* group[3].element[10].target[0].equivalence = #unmatched

* group[3].element[11].code = #vaccinationCertificate.vaccinationEvent.healthWorker.identifier
* group[3].element[11].display = "Health worker identification"
* group[3].element[11].target[0].code = #vaccinationCertificate.vaccinationEvent.healthProfessionalIdentification
* group[3].element[11].target[0].display = "Health Professional identification"
* group[3].element[11].target[0].equivalence = #equivalent


* group[3].element[12].code = #vaccinationCertificate.vaccinationEvent.targetDisease
* group[3].element[12].display = "Vaccinated against"
* group[3].element[12].target[0].code = #vaccinationCertificate.vaccinationEvent.targetDisease
* group[3].element[12].target[0].display = "Disease or agent targeted"
* group[3].element[12].target[0].equivalence = #equivalent
* group[3].element[12].target[0].comment = "Required ICD 11 bindings for the WHO model"


* group[3].element[13].code = #vaccinationCertificate.vaccinationEvent.dateNextDose
* group[3].element[13].display = "Due date of next dose"
* group[3].element[13].target[0].code = #vaccinationCertificate.vaccinationEvent.dateNextDose
* group[3].element[13].target[0].display = "Next vaccination date"
* group[3].element[13].target[0].equivalence = #equal


/*=============== Certificate Metadata =================
============ REMOVED FROM THIS VERSION ================ 


* group[4].source = "http://fhir.org/guides/who/svc/StructureDefinition/vaccinationCertificate"
* group[4].target = "http://hl7.eu/fhir/poc/svc/StructureDefinition/vaccinationCertificate"
* group[4].element[0].code = #vaccinationCertificate.metaData
* group[4].element[0].display = "Certificate Metadata"
* group[4].element[0].target[0].code = #vaccinationCertificate.metaData
* group[4].element[0].target[0].display = "Certificate metadata"
* group[4].element[0].target[0].equivalence = #equivalent
* group[4].element[1].code = #vaccinationCertificate.metaData.issuer
* group[4].element[1].display = "Certificate Issuer"
* group[4].element[1].target[0].code = #vaccinationCertificate.metaData.issuer
* group[4].element[1].target[0].display = "Certificate Issuer"
* group[4].element[1].target[0].equivalence = #equivalent
* group[4].element[2].code = #vaccinationCertificate.metaData.startValidity
* group[4].element[2].display = "Certificate valid from"
* group[4].element[2].target[0].code = #vaccinationCertificate.metaData.startValidity
* group[4].element[2].target[0].display = "Certificate valid from"
* group[4].element[2].target[0].equivalence = #equivalent
* group[4].element[3].code = #vaccinationCertificate.metaData.endValidity
* group[4].element[3].display = "Certificate valid until"
* group[4].element[3].target[0].code = #vaccinationCertificate.metaData.endValidity
* group[4].element[3].target[0].display = "Certificate valid until"
* group[4].element[3].target[0].equivalence = #equivalent
* group[4].element[4].code = #vaccinationCertificate.metaData.certificateId
* group[4].element[4].display = "Certificate identifier"
* group[4].element[4].target[0].code = #vaccinationCertificate.metaData.certificateId
* group[4].element[4].target[0].display = "Certificate identifier"
* group[4].element[4].target[0].equivalence = #equivalent
* group[4].element[5].code = #vaccinationCertificate.metaData.certificateStatus
* group[4].element[5].display = "Status of certificate validity"
* group[4].element[5].target[0].equivalence = #disjoint
* group[4].element[5].target[0].comment = "no status in the EC model"
* group[4].element[6].code = #vaccinationCertificate.metaData.certificateSchemaVersion
* group[4].element[6].display = "Certificate schema version"
* group[4].element[6].target[0].code = #vaccinationCertificate.metaData.certificateSchemaVersion
* group[4].element[6].target[0].display = "Certificate schema version"
* group[4].element[6].target[0].equivalence = #equal

================================ */