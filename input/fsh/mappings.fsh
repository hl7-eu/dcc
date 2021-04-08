Mapping: patient-to-md
Id: patient-to-md
Title: "Vaccination Certificate (Medical)"
Source: PatientDGC
Target: "http://hl7.eu/fhir/ig/dgc/StructureDefinition/vaccinationCertificate"

* identifier -> "vaccinationCertificate.subject.identifier"
* name -> "vaccinationCertificate.subject.name"
* gender -> "vaccinationCertificate.subject.sex"
* birthDate -> "vaccinationCertificate.subject.birthDate"

Mapping: patient-to-bc
Id: patient-to-bc
Title: "Vaccination Certificate (Border Control)"
Source: PatientDGC
Target: "http://hl7.eu/fhir/ig/dgc/StructureDefinition/vaccinationCertificateBc"

* identifier -> "vaccinationCertificateBc.subject.identifier"
* name -> "vaccinationCertificateBc.subject.name"
// * gender -> "vaccinationCertificateBc.subject.sex"
* birthDate -> "vaccinationCertificateBc.subject.birthDate"

Mapping: patient-to-pv
Id: patient-to-pv
Title: "Vaccination Certificate (Private Venue)"
Source: PatientDGC
Target: "http://hl7.eu/fhir/ig/dgc/StructureDefinition/vaccinationCertificatePv"

// * identifier -> "vaccinationCertificatePv.subject.identifier"
* name -> "vaccinationCertificatePv.subject.name"
// * gender -> "vaccinationCertificatePv.subject.sex"
* birthDate -> "vaccinationCertificatePv.subject.birthDate"

Mapping: immunization-to-md
Id: immunization-to-md
Title: "Vaccination Certificate (Medical)"
Source: ImmunizationDGC
Target: "http://hl7.eu/fhir/ig/dgc/StructureDefinition/vaccinationCertificate"

* -> "vaccinationCertificate.vaccination"
* vaccineCode.coding -> "vaccinationCertificate.vaccination.vaccineCode"
* vaccineCode.text -> "vaccinationCertificate.vaccination.vaccineProductName"
* patient -> "vaccinationCertificate.subject"
* occurrenceDateTime -> "vaccinationCertificate.vaccination.dateOfVaccination"
* location -> "vaccinationCertificate.vaccination.administeringCentre"
* location -> "vaccinationCertificate.vaccination.countryOfVaccination"
* manufacturer -> "vaccinationCertificate.vaccination.vaccineMarketingAuthorizationHolder"
* lotNumber -> "vaccinationCertificate.vaccination.vaccineBatchNumber"

* performer -> "vaccinationCertificate.vaccination.administeringCentre"
* performer -> "vaccinationCertificate.vaccination.healthProfessionalIdentification"

* protocolApplied.targetDisease -> "vaccinationCertificate.vaccination.targetDisease"
* protocolApplied.doseNumber[x] -> "vaccinationCertificate.vaccination.doseNumber"
* protocolApplied.seriesDoses[x] -> "vaccinationCertificate.vaccination.doseNumber"

Mapping: immunization-to-bc
Id: immunization-to-bc
Title: "Vaccination Certificate (Border Control)"
Source: ImmunizationDGC
Target: "http://hl7.eu/fhir/ig/dgc/StructureDefinition/vaccinationCertificateBc"

* -> "vaccinationCertificateBc.vaccination"
* vaccineCode.coding -> "vaccinationCertificateBc.vaccination.vaccineCode"
* vaccineCode.text -> "vaccinationCertificateBc.vaccination.vaccineProductName"
* patient -> "vaccinationCertificateBc.subject"
* occurrenceDateTime -> "vaccinationCertificateBc.vaccination.dateOfVaccination"
// * location -> "vaccinationCertificateBc.vaccination.administeringCentre"
* location -> "vaccinationCertificateBc.vaccination.countryOfVaccination"
* manufacturer -> "vaccinationCertificateBc.vaccination.vaccineMarketingAuthorizationHolder"
// * lotNumber -> "vaccinationCertificateBc.vaccination.vaccineBatchNumber"
// * performer -> "vaccinationCertificateBc.vaccination.administeringCentre"
// * performer -> "vaccinationCertificateBc.vaccination.healthProfessionalIdentification"
* protocolApplied.targetDisease -> "vaccinationCertificateBc.vaccination.targetDisease"
// * protocolApplied.doseNumber[x] -> "vaccinationCertificateBc.vaccination.doseNumber"
// * protocolApplied.seriesDoses[x] -> "vaccinationCertificateBc.vaccination.doseNumber"

Mapping: immunization-to-pv
Id: immunization-to-pv
Title: "Vaccination Certificate (Private Venue)"
Source: ImmunizationDGC
Target: "http://hl7.eu/fhir/ig/dgc/StructureDefinition/vaccinationCertificatePv"

* -> "vaccinationCertificatePv.vaccination"
// * vaccineCode.coding -> "vaccinationCertificatePv.vaccination.vaccineCode"
// * vaccineCode.text -> "vaccinationCertificatePv.vaccination.vaccineProductName"
* patient -> "vaccinationCertificatePv.subject"
// * occurrenceDateTime -> "vaccinationCertificatePv.vaccination.dateOfVaccination"
// * location -> "vaccinationCertificatePv.vaccination.administeringCentre"
* location -> "vaccinationCertificatePv.vaccination.countryOfVaccination"
// * manufacturer -> "vaccinationCertificatePv.vaccination.vaccineMarketingAuthorizationHolder"
// * lotNumber -> "vaccinationCertificatePv.vaccination.vaccineBatchNumber"
// * performer -> "vaccinationCertificatePv.vaccination.administeringCentre"
// * performer -> "vaccinationCertificatePv.vaccination.healthProfessionalIdentification"
* protocolApplied.targetDisease -> "vaccinationCertificatePv.vaccination.targetDisease"
// * protocolApplied.doseNumber[x] -> "vaccinationCertificatePv.vaccination.doseNumber"
// * protocolApplied.seriesDoses[x] -> "vaccinationCertificatePv.vaccination.doseNumber"


Mapping: location-to-md
Id: location-to-md
Title: "Vaccination Certificate (Medical)"
Source: LocationDGC
Target: "http://hl7.eu/fhir/ig/dgc/StructureDefinition/vaccinationCertificate"

* -> "vaccinationCertificate.vaccination.administeringCentre"
* address.country -> "vaccinationCertificate.vaccination.countryOfVaccination"

Mapping: location-to-bc
Id: location-to-bc
Title: "Vaccination Certificate (Border Control)"
Source: LocationDGC
Target: "http://hl7.eu/fhir/ig/dgc/StructureDefinition/vaccinationCertificateBc"

// * -> "vaccinationCertificateBc.vaccination.administeringCentre"
* address.country -> "vaccinationCertificateBc.vaccination.countryOfVaccination"

Mapping: location-to-pv
Id: location-to-pv
Title: "Vaccination Certificate (Private Venue)"
Source: LocationDGC
Target: "http://hl7.eu/fhir/ig/dgc/StructureDefinition/vaccinationCertificatePv"

// * -> "vaccinationCertificateBc.vaccination.administeringCentre"
// * address.country -> "vaccinationCertificateBc.vaccination.countryOfVaccination"
