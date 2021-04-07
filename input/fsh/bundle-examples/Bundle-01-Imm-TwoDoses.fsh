Instance: svc-Bundle-01
InstanceOf: Bundle
Usage: #example
* identifier.system = "http://hl7.eu/fhir/sid/uvci"
* identifier.value = "V1CZ454557891308174803488707671418"
* identifier.period.start = "2020-12-27T14:30:00+01:00" // I guess that precision to a day would be enough!
* identifier.period.end = "2021-12-27T14:30:00+01:00" // 1 year validity
* type = #document
* timestamp = "2020-12-27T14:30:00+01:00"
* entry[0].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad4d"
* entry[0].resource = Inline-Instance-for-svc-Bundle-01-1
* entry[1].fullUrl = "urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e8"
* entry[1].resource = Inline-Instance-for-svc-Bundle-01-2
* entry[2].fullUrl = "urn:uuid:c220e36c-eb67-4fc4-9ba1-2fabc52acec6"
* entry[2].resource = c220e36c-eb67-4fc4-9ba1-2fabc52acec6
* entry[3].fullUrl = "urn:uuid:47524493-846a-4a26-bae2-4ab03e60f02e"
* entry[3].resource = Inline-Instance-for-svc-Bundle-01-3
* entry[4].fullUrl = "urn:uuid:45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7"
* entry[4].resource = Inline-Instance-for-svc-Bundle-01-4
* entry[5].fullUrl = "urn:uuid:55a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd8"
* entry[5].resource = Inline-Instance-for-svc-Bundle-01-5

Instance: Inline-Instance-for-svc-Bundle-01-1
InstanceOf: Composition
Usage: #inline
* id = "30551ce1-5a28-4356-b684-1e639094ad4d"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3f69e0a5-2177-4540-baab-7a5d0877428f"
* status = #final
* type = $loinc#82593-5 "Immunization summary report"
* subject.reference = "urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e8"
* date = "2020-12-27T14:30:00+01:00"
* author[0].display = "MUDr. Aleš Procházka"
* title = "Vaccine Certificate December 27, 2020 14:30"
* confidentiality = #N
* attester[0].mode = #legal
* attester[0].time = "2020-12-27T14:30:00+01:00"
* attester[0].party.reference = "urn:uuid:45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7"
* custodian.reference = "urn:uuid:45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7"
* section[0].title = "Vaccinations"
* section[0].code = $loinc#11369-6 "Hx of Immunization"
* section[0].text.status = #generated
* section[0].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><thead><tr><th>Date</th><th>Product</th><th>Vaccine</th><th>Dose</th></tr></thead><tbody><tr><td>2020-12-02</td><td>Comirnaty</td><td>COVID-19 mRNA Vaccine</td><td>1/2</td></tr><tr><td>2020-12-23</td><td>Comirnaty</td><td>COVID-19 mRNA Vaccine</td><td>2/2</td></tr></tbody></table></div>"
* section[0].entry[0].reference = "urn:uuid:c220e36c-eb67-4fc4-9ba1-2fabc52acec6"
* section[0].entry[1].reference = "urn:uuid:47524493-846a-4a26-bae2-4ab03e60f02e"

Instance: Inline-Instance-for-svc-Bundle-01-2
InstanceOf: Patient
Usage: #inline
* id = "2b90dd2b-2dab-4c75-9bb9-a355e07401e8"
* identifier[0].type = $v2-0203#NIIP
* identifier[0].system = "urn:oid:1.2.203.24341.1.20.2"
* identifier[0].value = "740512852"
// identifier[1].type = can we add a type for a national id card number ?
* identifier[1].system = "urn:oid:1.2.203.24341.1.20.9.1"
* identifier[1].value = "A225961454"
* identifier[2].type = $v2-0203#PPN
* identifier[2].system = "urn:oid:2.16.840.1.113883.4.330.203"
* identifier[2].value = "5484136"
* name[0].family = "Očkovaný"
* name[0].given[0] = "František"
//* gender = #male
* birthDate = "2000-03-21"

Instance: c220e36c-eb67-4fc4-9ba1-2fabc52acec6
InstanceOf: Immunization
Usage: #inline
* status = #completed
* vaccineCode = $sct#1119349007 "Severe acute respiratory syndrome coronavirus 2 mRNA only vaccine product"
* vaccineCode.text = "Comirnaty"
* patient.reference = "urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e8"
* occurrenceDateTime = "2020-12-02"
* location.reference = "urn:uuid:55a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd8"
* manufacturer.display = "BioNTech Manufacturing GmbH"
* lotNumber = "B1235742"
* performer[0].actor.display = "MUDr. Aleš Procházka"
* protocolApplied[0].targetDisease[0] = $sct#840533007 "SARS-CoV-2"
* protocolApplied[0].doseNumberPositiveInt = 1
* protocolApplied[0].seriesDosesPositiveInt = 2

Instance: Inline-Instance-for-svc-Bundle-01-3
InstanceOf: Immunization
Usage: #inline
* id = "47524493-846a-4a26-bae2-4ab03e60f02e"
* status = #completed
* vaccineCode = $sct#1119349007 "Severe acute respiratory syndrome coronavirus 2 mRNA only vaccine product"
// * vaccineCode = $sct#333521006 - used for testing the slicing error
* vaccineCode.text = "Comirnaty"
* vaccineCode.text = "Comirnaty"
* patient.reference = "urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e8"
* occurrenceDateTime = "2020-12-23"
* location.reference = "urn:uuid:55a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd8"
* manufacturer.display = "BioNTech Manufacturing GmbH"
* lotNumber = "D5423452"
* performer[0].actor.display = "MUDr. Jan Novák"
* protocolApplied[0].targetDisease[0] = $sct#840533007 "SARS-CoV-2"
* protocolApplied[0].doseNumberPositiveInt = 2
* protocolApplied[0].seriesDosesPositiveInt = 2

Instance: Inline-Instance-for-svc-Bundle-01-4
InstanceOf: Organization
Usage: #inline
* id = "45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7"
* identifier[0].system = "urn:oid:1.2.203"
* identifier[0].value = "24341"
* name = "Ministry of Health of the Czech Republic"

Instance: Inline-Instance-for-svc-Bundle-01-5
InstanceOf: Location
Usage: #inline
* id = "55a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd8"
* name = "Hospital Na Františku Prague"
* address.city = "Prague"
* address.country = "CZ"