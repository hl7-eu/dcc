Mapping: patient-to-lm
Id: patient-to-lm
Title: "EU Vaccination Certificate"
Source: PatientDGC
Target: "http://hl7.eu/fhir/ig/dgc/StructureDefinition/vaccinationCertificate"

* identifier -> "vaccinationCertificate.subject.identifier"
* name -> "vaccinationCertificate.subject.name"
* gender -> "vaccinationCertificate.subject.sex"
* birthDate -> "vaccinationCertificate.subject.birthDate"


Mapping: immunization-to-lm
Id: immunization-to-lm
Title: "EU Vaccination Certificate"
Source: ImmunizationDGC
Target: "http://hl7.eu/fhir/ig/dgc/StructureDefinition/vaccinationCertificate"

* -> "vaccinationCertificate.vaccination"
* manufacturer -> "vaccinationCertificate.subject.identifier"
* protocolApplied.targetDisease -> "vaccinationCertificate.vaccination.targetDisease"
* vaccineCode.coding -> "vaccinationCertificate.vaccination.vaccineCode"
* vaccineCode.text -> "vaccinationCertificate.vaccination.vaccineProductName"

* manufacturer -> "vaccinationCertificate.vaccination.vaccineMarketingAuthorizationHolder"
* protocolApplied.doseNumber[x] -> "vaccinationCertificate.vaccination.doseNumber"
* protocolApplied.seriesDoses[x] -> "vaccinationCertificate.vaccination.doseNumber"

* lotNumber -> "vaccinationCertificate.vaccination.vaccineBatchNumber"
* occurrenceDateTime -> "vaccinationCertificate.vaccination.dateOfVaccination"
* performer -> "vaccinationCertificate.vaccination.administeringCentre"
* location -> "vaccinationCertificate.vaccination.administeringCentre"
* location -> "vaccinationCertificate.vaccination.countryOfVaccination"
* performer -> "vaccinationCertificate.vaccination.healthProfessionalIdentification"
* performer -> "vaccinationCertificate.vaccination.healthProfessionalIdentification"
