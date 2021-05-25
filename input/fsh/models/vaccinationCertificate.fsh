Instance: vaccinationCertificate
InstanceOf: StructureDefinition
Description: "Logical Model representing the EU Digital Green Certificate"
Title: "EU Digital Green Certificate"
Usage: #definition

* publisher = "HL7 Italia"
* status = #draft
* url = "http://hl7.eu/fhir/ig/dgc/StructureDefinition/vaccinationCertificate"
* name = "vaccinationCertificate"
* title = "EU Digital Green Certificate"
* status = #draft
* experimental = true
* description = "Logical Model representing the EU Digital Green Certificate"
* version = "0.0.1"
* kind = #logical
* abstract = false
* type = "vaccinationCertificate"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization

* mapping[0].identity = "fhir"
* mapping[0].uri = "hl7.org/fhir/r4"
* mapping[0].name = "FHIR"

* differential.element[0].id = "vaccinationCertificate"
* differential.element[0].path = "vaccinationCertificate"
* differential.element[0].short = "EU Vaccination Certificate"
* differential.element[0].definition = "EU Vaccination Certificate content"
* differential.element[0].min = 1
* differential.element[0].max = "1"

* differential.element[1].id = "vaccinationCertificate.subject"
* differential.element[1].path = "vaccinationCertificate.subject"
* differential.element[1].short = "Person identification"
* differential.element[1].definition = "Person identification"
* differential.element[1].min = 1
* differential.element[1].max = "1"
* differential.element[1].type.code = #BackboneElement
* differential.element[2].id = "vaccinationCertificate.subject.name"
* differential.element[2].path = "vaccinationCertificate.subject.name"
* differential.element[2].short = "Person name"
* differential.element[2].definition = "The legal name of the vaccinated person"
* differential.element[2].min = 1
* differential.element[2].max = "*"
* differential.element[2].type.code = #HumanName
* differential.element[3].id = "vaccinationCertificate.subject.identifier"
* differential.element[3].path = "vaccinationCertificate.subject.identifier"
* differential.element[3].short = "Person identifier"
* differential.element[3].definition = "An identifier of the vaccinated person, according to the policies applicable in each country. It should be captured what type of identifier is used. Examples: citizen ID card or identifier within the health system/IIS/e-registry."
* differential.element[3].min = 0
* differential.element[3].max = "*"
* differential.element[3].type.code = #Identifier
* differential.element[4].id = "vaccinationCertificate.subject.sex"
* differential.element[4].path = "vaccinationCertificate.subject.sex"
* differential.element[4].short = "Sex"
* differential.element[4].definition = "Administrative gender"
* differential.element[4].min = 0
* differential.element[4].max = "1"
* differential.element[4].type.code = #CodeableConcept
* differential.element[5].id = "vaccinationCertificate.subject.birthDate"
* differential.element[5].path = "vaccinationCertificate.subject.birthDate"
* differential.element[5].short = "Person date of birth"
* differential.element[5].definition = "Vaccinated person’s date of birth. Mandatory if no Person identifier is provided."
* differential.element[5].min = 0
* differential.element[5].max = "1"
* differential.element[5].type.code = #dateTime
* differential.element[6].id = "vaccinationCertificate.vaccination"
* differential.element[6].path = "vaccinationCertificate.vaccination"
* differential.element[6].short = "Vaccination / prophylaxis information"
* differential.element[6].definition = "Vaccination / prophylaxis information"
* differential.element[6].min = 1
* differential.element[6].max = "*"
* differential.element[6].type.code = #BackboneElement
* differential.element[7].id = "vaccinationCertificate.vaccination.targetDisease"
* differential.element[7].path = "vaccinationCertificate.vaccination.targetDisease"
* differential.element[7].short = "Disease or agent targeted"
* differential.element[7].definition = "Disease or agent that the vaccination provides protection against"
* differential.element[7].min = 0
* differential.element[7].max = "*"
* differential.element[7].type.code = #CodeableConcept
* differential.element[8].id = "vaccinationCertificate.vaccination.vaccineCode"
* differential.element[8].path = "vaccinationCertificate.vaccination.vaccineCode"
* differential.element[8].short = "Vaccine or prophylaxis"
* differential.element[8].definition = "Generic description of the vaccine/Vaccine component(s).
Example:
J07BX03 covid-19 vaccines (temporary code, to be implemented in ATC 2022)
1119349007 | COVID-19 mRNA vaccine |
1119305005 | COVID-19 antigen vaccine |"
* differential.element[8].min = 0
* differential.element[8].max = "*"
* differential.element[8].type.code = #CodeableConcept
* differential.element[9].id = "vaccinationCertificate.vaccination.vaccineProductName"
* differential.element[9].path = "vaccinationCertificate.vaccination.vaccineProductName"
* differential.element[9].short = "Vaccine medicinal product  "
* differential.element[9].definition = "Medicinal product name
Example: 
COMIRNATY concentrate for dispersion for injection  "
* differential.element[9].min = 0
* differential.element[9].max = "*"
* differential.element[9].type.code = #string
* differential.element[10].id = "vaccinationCertificate.vaccination.vaccineMarketingAuthorizationHolder"
* differential.element[10].path = "vaccinationCertificate.vaccination.vaccineMarketingAuthorizationHolder"
* differential.element[10].short = "Marketing Authorization Holder"
* differential.element[10].definition = "Marketing Authorisation Holder"
* differential.element[10].min = 0
* differential.element[10].max = "1"
* differential.element[10].type.code = #string
* differential.element[11].id = "vaccinationCertificate.vaccination.doseNumber"
* differential.element[11].path = "vaccinationCertificate.vaccination.doseNumber"
* differential.element[11].short = "Number in a series of vaccinations / doses"
* differential.element[11].definition = "Order in the vaccination course"
* differential.element[11].min = 1
* differential.element[11].max = "1"
* differential.element[11].type.code = #BackboneElement
* differential.element[12].id = "vaccinationCertificate.vaccination.vaccineBatchNumber"
* differential.element[12].path = "vaccinationCertificate.vaccination.vaccineBatchNumber"
* differential.element[12].short = "Batch/lot number"
* differential.element[12].definition = "A distinctive combination of numbers and/or letters which specifically identifies a batch"
* differential.element[12].min = 0
* differential.element[12].max = "1"
* differential.element[12].type.code = #string
* differential.element[13].id = "vaccinationCertificate.vaccination.dateOfVaccination"
* differential.element[13].path = "vaccinationCertificate.vaccination.dateOfVaccination"
* differential.element[13].short = "Date of vaccination"
* differential.element[13].definition = "Date of vaccination"
* differential.element[13].min = 0
* differential.element[13].max = "1"
* differential.element[13].type.code = #dateTime
* differential.element[14].id = "vaccinationCertificate.vaccination.administeringCentre"
* differential.element[14].path = "vaccinationCertificate.vaccination.administeringCentre"
* differential.element[14].short = "Administering centre"
* differential.element[14].definition = "Name/code of administering centre or a health authority responsible for the vaccination event"
* differential.element[14].min = 0
* differential.element[14].max = "1"
* differential.element[14].type.code = #Organization
* differential.element[15].id = "vaccinationCertificate.vaccination.healthProfessionalIdentification"
* differential.element[15].path = "vaccinationCertificate.vaccination.healthProfessionalIdentification"
* differential.element[15].short = "Health Professional identification"
* differential.element[15].definition = "Name or health professional code responsible for administering the vaccine or prophylaxis"
* differential.element[15].min = 0
* differential.element[15].max = "*"
* differential.element[15].type.code = #Practitioner
* differential.element[16].id = "vaccinationCertificate.vaccination.countryOfVaccination"
* differential.element[16].path = "vaccinationCertificate.vaccination.countryOfVaccination"
* differential.element[16].short = "Country of vaccination"
* differential.element[16].definition = "The country in which the individual has been vaccinated"
* differential.element[16].min = 0
* differential.element[16].max = "1"
* differential.element[16].type.code = #CodeableConcept
* differential.element[17].id = "vaccinationCertificate.vaccination.dateNextDose"
* differential.element[17].path = "vaccinationCertificate.vaccination.dateNextDose"
* differential.element[17].short = "Next vaccination date"
* differential.element[17].definition = "Date on which the next vaccination should be administered"
* differential.element[17].min = 0
* differential.element[17].max = "1"
* differential.element[17].type.code = #dateTime
* differential.element[18].id = "vaccinationCertificate.metaData"
* differential.element[18].path = "vaccinationCertificate.metaData"
* differential.element[18].short = "Certificate metadata"
* differential.element[18].definition = "Certificate metadata"
* differential.element[18].min = 1
* differential.element[18].max = "1"
* differential.element[18].type.code = #BackboneElement
* differential.element[19].id = "vaccinationCertificate.metaData.issuer"
* differential.element[19].path = "vaccinationCertificate.metaData.issuer"
* differential.element[19].short = "Certificate Issuer"
* differential.element[19].definition = "Entity that has issued the certificate (allowing to check the certificate)"
* differential.element[19].min = 1
* differential.element[19].max = "1"
* differential.element[19].type.code = #CodeableConcept
* differential.element[20].id = "vaccinationCertificate.metaData.certificateId"
* differential.element[20].path = "vaccinationCertificate.metaData.certificateId"
* differential.element[20].short = "Certificate identifier"
* differential.element[20].definition = "Unique identifier of the certificate (UVCI), to be printed (human readable) into the certificate; the unique identifier can be included in the IIS"
* differential.element[20].min = 1
* differential.element[20].max = "1"
* differential.element[20].type.code = #Identifier
* differential.element[21].id = "vaccinationCertificate.metaData.startValidity"
* differential.element[21].path = "vaccinationCertificate.metaData.startValidity"
* differential.element[21].short = "Certificate valid from"
* differential.element[21].definition = "Certificate valid from (required if known)"
* differential.element[21].min = 0
* differential.element[21].max = "1"
* differential.element[21].type.code = #dateTime
* differential.element[22].id = "vaccinationCertificate.metaData.endValidity"
* differential.element[22].path = "vaccinationCertificate.metaData.endValidity"
* differential.element[22].short = "Certificate valid until"
* differential.element[22].definition = "Certificate valid until (validity can differ from the expected immunisation period)"
* differential.element[22].min = 0
* differential.element[22].max = "1"
* differential.element[22].type.code = #dateTime
* differential.element[23].id = "vaccinationCertificate.metaData.certificateSchemaVersion"
* differential.element[23].path = "vaccinationCertificate.metaData.certificateSchemaVersion"
* differential.element[23].short = "Certificate schema version"
* differential.element[23].definition = "Version of this minimum dataset definition - currently set at 1.0.0"
* differential.element[23].min = 1
* differential.element[23].max = "1"
* differential.element[23].type.code = #Identifier
//  
// === MAPPING === 
// 
* differential.element[1].mapping[0].identity = "fhir"
* differential.element[1].mapping[0].map = "Composition.conformsTo('http://hl7.eu/fhir/ig/dgc/StructureDefinition/Composition-svc').subject"

* differential.element[1].mapping[1].identity = "fhir"
* differential.element[1].mapping[1].map = "Immunization.conformsTo('http://hl7.eu/fhir/ig/dgc/StructureDefinition/Immunization-svc').patient"

* differential.element[2].mapping[0].identity = "fhir"
* differential.element[2].mapping[0].map = "Patient.conformsTo('http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips').name"

* differential.element[3].mapping[0].identity = "fhir"
* differential.element[3].mapping[0].map = "Patient.conformsTo('http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips').identifier"

* differential.element[4].mapping[0].identity = "fhir"
* differential.element[4].mapping[0].map = "Patient.conformsTo('http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips').gender"

* differential.element[5].mapping[0].identity = "fhir"
* differential.element[5].mapping[0].map = "Patient.conformsTo('http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips').birthDate"

* differential.element[6].mapping[0].identity = "fhir"
* differential.element[6].mapping[0].map = "Immunization.conformsTo('http://hl7.eu/fhir/ig/dgc/StructureDefinition/Immunization-svc')"

* differential.element[7].mapping[0].identity = "fhir"
* differential.element[7].mapping[0].map = "Immunization.conformsTo('http://hl7.eu/fhir/ig/dgc/StructureDefinition/Immunization-svc').protocolApplied.targetDisease"

* differential.element[8].mapping[0].identity = "fhir"
* differential.element[8].mapping[0].map = "Immunization.conformsTo('http://hl7.eu/fhir/ig/dgc/StructureDefinition/Immunization-svc').vaccineCode"

* differential.element[9].mapping[0].identity = "fhir"
* differential.element[9].mapping[0].map = "Immunization.conformsTo('http://hl7.eu/fhir/ig/dgc/StructureDefinition/Immunization-svc').vaccineCode.text"

* differential.element[10].mapping[0].identity = "fhir"
* differential.element[10].mapping[0].map = "Immunization.conformsTo('http://hl7.eu/fhir/ig/dgc/StructureDefinition/Immunization-svc').manufacturer"

* differential.element[11].mapping[0].identity = "fhir"
* differential.element[11].mapping[0].map = "Immunization.conformsTo('http://hl7.eu/fhir/ig/dgc/StructureDefinition/Immunization-svc').protocolApplied.doseNumber[x], Immunization.conformsTo('http://hl7.eu/fhir/ig/dgc/StructureDefinition/Immunization-svc').protocolApplied.seriesDoses[x]"

* differential.element[12].mapping[0].identity = "fhir"
* differential.element[12].mapping[0].map = "Immunization.conformsTo('http://hl7.eu/fhir/ig/dgc/StructureDefinition/Immunization-svc').lotNumber"

* differential.element[13].mapping[0].identity = "fhir"
* differential.element[13].mapping[0].map = "Immunization.conformsTo('http://hl7.eu/fhir/ig/dgc/StructureDefinition/Immunization-svc').occurrenceDateTime"

* differential.element[14].mapping[0].identity = "fhir"
* differential.element[14].mapping[0].map = "Immunization.conformsTo('http://hl7.eu/fhir/ig/dgc/StructureDefinition/Immunization-svc').performer, Immunization.conformsTo('http://hl7.eu/fhir/ig/dgc/StructureDefinition/Immunization-svc').location"

* differential.element[15].mapping[0].identity = "fhir"
* differential.element[15].mapping[0].map = "Immunization.conformsTo('http://hl7.eu/fhir/ig/dgc/StructureDefinition/Immunization-svc').performer"

* differential.element[16].mapping[0].identity = "fhir"
* differential.element[16].mapping[0].map = "Immunization.conformsTo('http://hl7.eu/fhir/ig/dgc/StructureDefinition/Immunization-svc').location.address.country"

* differential.element[17].mapping[0].identity = "fhir"
* differential.element[17].mapping[0].map = "ImmunizationRecommendation.recommendation.where(dateCriterion='http://loinc.org#30980-7').value"




* differential.element[19].mapping[0].identity = "fhir"
* differential.element[19].mapping[0].map = "Composition.conformsTo('http://hl7.eu/fhir/ig/dgc/StructureDefinition/Composition-svc').attester.party"

* differential.element[20].mapping[0].identity = "fhir"
* differential.element[20].mapping[0].map = "Build.conformsTo('http://hl7.eu/fhir/ig/dgc/StructureDefinition/Build-svc').identifier"

* differential.element[20].mapping[1].identity = "fhir"
* differential.element[20].mapping[1].map = "Composition.conformsTo('http://hl7.eu/fhir/ig/dgc/StructureDefinition/Composition-svc').identifier"

* differential.element[21].mapping[0].identity = "fhir"
* differential.element[21].mapping[0].map = "Composition.attester.time, Build.conformsTo('http://hl7.eu/fhir/ig/dgc/StructureDefinition/Build-svc').identifier.period.start"

* differential.element[22].mapping[0].identity = "fhir"
* differential.element[22].mapping[0].map = "Build.conformsTo('http://hl7.eu/fhir/ig/dgc/StructureDefinition/Build-svc').identifier.period.end"
// 
// === INVARIANTS === 
//  
* differential.element[0].constraint[0].key = "eu-dgc-1"
* differential.element[0].constraint[0].severity = #error
* differential.element[0].constraint[0].human = "If no Person identifier is provided then the date of birth shall be valued"
* differential.element[0].constraint[0].expression = "identifier.exists() or birthDate.exists()"
