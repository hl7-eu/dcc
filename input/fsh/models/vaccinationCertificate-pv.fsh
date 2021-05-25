Instance: vaccinationCertificatePV
InstanceOf: StructureDefinition
Description: "Logical Model representing the EU Digital Green Certificate for Private Venue"
Title: "EU Digital Green Certificate - Private Venue"
Usage: #definition

* publisher = "HL7 Italia"
* status = #draft
* url = "http://hl7.it/fhir/dgc/StructureDefinition/vaccinationCertificatePV"
* name = "vaccinationCertificatePrivateVenue"
* title = "EU Digital Green Certificate - Private Venue"
* status = #draft
* experimental = true
* description = "Logical Model representing the EU Digital Green Certificate for Private Venue"
* version = "0.0.1"





* kind = #logical
* abstract = false
* type = "vaccinationCertificate"
* baseDefinition = "http://hl7.eu/fhir/ig/dgc/StructureDefinition/vaccinationCertificate"
* derivation = #constraint


* differential.element[0].id = "vaccinationCertificate.subject"
* differential.element[0].path = "vaccinationCertificate.subject"



* differential.element[0].mustSupport = true
* differential.element[1].id = "vaccinationCertificate.subject.name"
* differential.element[1].path = "vaccinationCertificate.subject.name"



* differential.element[1].mustSupport = true
* differential.element[2].id = "vaccinationCertificate.subject.identifier"
* differential.element[2].path = "vaccinationCertificate.subject.identifier"
* differential.element[2].min = 0
* differential.element[2].max = "0"


* differential.element[3].id = "vaccinationCertificate.subject.sex"
* differential.element[3].path = "vaccinationCertificate.subject.sex"
* differential.element[3].min = 0
* differential.element[3].max = "0"


* differential.element[4].id = "vaccinationCertificate.subject.birthDate"
* differential.element[4].path = "vaccinationCertificate.subject.birthDate"



* differential.element[4].mustSupport = true
* differential.element[5].id = "vaccinationCertificate.vaccination"
* differential.element[5].path = "vaccinationCertificate.vaccination"



* differential.element[5].mustSupport = true
* differential.element[6].id = "vaccinationCertificate.vaccination.targetDisease"
* differential.element[6].path = "vaccinationCertificate.vaccination.targetDisease"



* differential.element[6].mustSupport = true
* differential.element[7].id = "vaccinationCertificate.vaccination.vaccineCode"
* differential.element[7].path = "vaccinationCertificate.vaccination.vaccineCode"
* differential.element[7].min = 0
* differential.element[7].max = "0"


* differential.element[8].id = "vaccinationCertificate.vaccination.vaccineProductName"
* differential.element[8].path = "vaccinationCertificate.vaccination.vaccineProductName"
* differential.element[8].min = 0
* differential.element[8].max = "0"


* differential.element[9].id = "vaccinationCertificate.vaccination.vaccineMarketingAuthorizationHolder"
* differential.element[9].path = "vaccinationCertificate.vaccination.vaccineMarketingAuthorizationHolder"
* differential.element[9].min = 0
* differential.element[9].max = "0"


* differential.element[10].id = "vaccinationCertificate.vaccination.doseNumber"
* differential.element[10].path = "vaccinationCertificate.vaccination.doseNumber"



* differential.element[10].mustSupport = true
* differential.element[11].id = "vaccinationCertificate.vaccination.vaccineBatchNumber"
* differential.element[11].path = "vaccinationCertificate.vaccination.vaccineBatchNumber"
* differential.element[11].min = 0
* differential.element[11].max = "0"


* differential.element[12].id = "vaccinationCertificate.vaccination.dateOfVaccination"
* differential.element[12].path = "vaccinationCertificate.vaccination.dateOfVaccination"
* differential.element[12].min = 0
* differential.element[12].max = "0"


* differential.element[13].id = "vaccinationCertificate.vaccination.administeringCentre"
* differential.element[13].path = "vaccinationCertificate.vaccination.administeringCentre"
* differential.element[13].min = 0
* differential.element[13].max = "0"


* differential.element[14].id = "vaccinationCertificate.vaccination.healthProfessionalIdentification"
* differential.element[14].path = "vaccinationCertificate.vaccination.healthProfessionalIdentification"
* differential.element[14].min = 0
* differential.element[14].max = "0"


* differential.element[15].id = "vaccinationCertificate.vaccination.countryOfVaccination"
* differential.element[15].path = "vaccinationCertificate.vaccination.countryOfVaccination"
* differential.element[15].min = 0
* differential.element[15].max = "0"


* differential.element[16].id = "vaccinationCertificate.vaccination.dateNextDose"
* differential.element[16].path = "vaccinationCertificate.vaccination.dateNextDose"
* differential.element[16].min = 0
* differential.element[16].max = "0"


* differential.element[17].id = "vaccinationCertificate.metaData"
* differential.element[17].path = "vaccinationCertificate.metaData"



* differential.element[17].mustSupport = true
* differential.element[18].id = "vaccinationCertificate.metaData.issuer"
* differential.element[18].path = "vaccinationCertificate.metaData.issuer"



* differential.element[18].mustSupport = true
* differential.element[19].id = "vaccinationCertificate.metaData.certificateId"
* differential.element[19].path = "vaccinationCertificate.metaData.certificateId"



* differential.element[19].mustSupport = true
* differential.element[20].id = "vaccinationCertificate.metaData.startValidity"
* differential.element[20].path = "vaccinationCertificate.metaData.startValidity"



* differential.element[20].mustSupport = true
* differential.element[21].id = "vaccinationCertificate.metaData.endValidity"
* differential.element[21].path = "vaccinationCertificate.metaData.endValidity"



* differential.element[21].mustSupport = true
* differential.element[22].id = "vaccinationCertificate.metaData.certificateSchemaVersion"
* differential.element[22].path = "vaccinationCertificate.metaData.certificateSchemaVersion"



* differential.element[22].mustSupport = true
