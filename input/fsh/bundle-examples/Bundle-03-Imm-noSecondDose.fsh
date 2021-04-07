Instance: svc-Bundle-03
// REVIEW
InstanceOf: Bundle
Usage: #example
* identifier.system = "http://hl7.eu/fhir/sid/uvci" 
* identifier.value = "V1IT454557891308174803488707671418"
* identifier.period.start = "2021-02-10"
* type = #document
* timestamp = "2021-02-10T14:30:00+01:00"
* entry[0].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad4d"
* entry[0].resource = Inline-Instance-for-svc-Bundle-03-1
* entry[1].fullUrl = "urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e8"
* entry[1].resource = Inline-Instance-for-svc-Bundle-03-2
* entry[2].fullUrl = "urn:uuid:c220e36c-eb67-4fc4-9ba1-2fabc52acec6"
* entry[2].resource = Inline-Instance-for-svc-Bundle-03-3
* entry[3].fullUrl = "urn:uuid:47524493-846a-4a26-bae2-4ab03e60f02e"
* entry[3].resource = Inline-Instance-for-svc-Bundle-03-4
* entry[4].fullUrl = "urn:uuid:45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7"
* entry[4].resource = Inline-Instance-for-svc-Bundle-03-5
* entry[5].fullUrl = "urn:uuid:55a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd8"
* entry[5].resource = Inline-Instance-for-svc-Bundle-03-6
* entry[6].fullUrl = "urn:uuid:b66c1b23-21e9-4bd0-9cd7-edd806c126de"
* entry[6].resource = Inline-Instance-for-svc-Bundle-03-7
* entry[7].fullUrl = "urn:uuid:d7a490a1-d267-4785-ac98-db56748827fb"
* entry[7].resource = Inline-Instance-for-svc-Bundle-03-8



Instance: Inline-Instance-for-svc-Bundle-03-1
// REVIEW
InstanceOf: Composition
Usage: #inline
* id = "30551ce1-5a28-4356-b684-1e639094ad4d"
* identifier.system = "urn:oid:2.16.724.4.8.10.200.10"
* identifier.value = "3f69e0a5-2177-4540-baab-7a5d0877428f"
* status = #final
* type = $loinc#82593-5 "Immunization summary report"
* subject.reference = "urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e8"
* date = "2021-02-10T14:30:00+01:00"
* author[0].reference = "urn:uuid:d7a490a1-d267-4785-ac98-db56748827fb" 
* title = "Vaccine Certificate Covid-19"
* attester[0].mode = #legal
* attester[0].time = "2020-12-27T14:30:00+01:00"
* attester[0].party.reference = "urn:uuid:45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7" //change from organziation t
* custodian.reference = "urn:uuid:b66c1b23-21e9-4bd0-9cd7-edd806c126de"
* section[0].title = "Vaccinations"
* section[0].code = $loinc#11369-6 "Hx of Immunization"
* section[0].text.status = #generated
* section[0].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><thead><tr><th>Date</th><th>Product</th><th>Vaccine</th><th>Dose</th><th>Status</th></tr></thead><tbody><tr><td>2021-01-10</td><td>Comirnaty</td><td>COVID-19 mRNA Vaccine</td><td>1/2</td><td>completed</td></tr><tr><td>2021-02-07</td><td></td><td>COVID-19 mRNA Vaccine</td><td>2/2</td><td>Not Done (medical precaution)</td></tr></tbody></table></div>"
* section[0].entry[0].reference = "urn:uuid:c220e36c-eb67-4fc4-9ba1-2fabc52acec6"
* section[0].entry[1].reference = "urn:uuid:47524493-846a-4a26-bae2-4ab03e60f02e"

Instance: Inline-Instance-for-svc-Bundle-03-2
// OK
InstanceOf: Patient
Usage: #inline
* id = "2b90dd2b-2dab-4c75-9bb9-a355e07401e8"
* identifier[0].system = "http://hl7.it/sid/codiceFiscale"
* identifier[0].value = "RSSMRA97L67Z602C"
* name[0].family = "Rossi"
* name[0].given[0] = "Maria"
* gender = #female
* birthDate = "1997-07-28"

Instance: Inline-Instance-for-svc-Bundle-03-3
// OK
InstanceOf: Immunization
Usage: #inline
* status = #completed
* vaccineCode.coding[0] = $sct#1119349007 "Severe acute respiratory syndrome coronavirus 2 mRNA only vaccine product"
* vaccineCode.coding[1] = $aic#049283 "COVID-19 Vaccine Moderna"
* vaccineCode.text = "COVID-19 Vaccine Moderna"
* patient.reference = "urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e8"
* occurrenceDateTime = "2021-01-10"
* location.reference = "urn:uuid:55a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd8" 
* manufacturer.display = "MODERNA BIOTECH SPAIN, S.L."
* lotNumber = "B1235742" // INVENTED
* performer[0].actor.reference = "urn:uuid:45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7" 
* performer[0].actor.display = "Ospedale Careggi - Firenze"
* performer[1].actor.reference = "urn:uuid:d7a490a1-d267-4785-ac98-db56748827fb" // 
* protocolApplied[0].targetDisease[0] = $icd-10#J12.82 "Pneumonia due to coronavirus disease 2019" // $sct#840533007 
* protocolApplied[0].doseNumberPositiveInt = 1
* protocolApplied[0].seriesDosesPositiveInt = 2

Instance: Inline-Instance-for-svc-Bundle-03-4
// OK
InstanceOf: Immunization
Usage: #inline
* id = "47524493-846a-4a26-bae2-4ab03e60f02e"
* status = #not-done
* statusReason = http://terminology.hl7.org/CodeSystem/v3-ActReason#MEDPREC	"medical precaution"
* vaccineCode.coding[0] = $sct#1119349007 "Severe acute respiratory syndrome coronavirus 2 mRNA only vaccine product"
* patient.reference = "urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e8"
* occurrenceDateTime = "2021-02-07" // Consider the data-absent-reason case
* performer[0].actor.reference = "urn:uuid:45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7" 
* performer[0].actor.display = "Ospedale Careggi - Firenze"
* performer[1].actor.reference = "urn:uuid:d7a490a1-d267-4785-ac98-db56748827fb" // 
* recorded = "2021-02-07"
* protocolApplied[0].doseNumberPositiveInt = 2
* protocolApplied[0].seriesDosesPositiveInt = 2

Instance: Inline-Instance-for-svc-Bundle-03-5
// OK
InstanceOf: Organization
Usage: #inline
* id = "45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7"
* identifier[0].system = "http://terminology.hl7.it/CodeSystem/minsan-hsp"
* identifier[0].value = "090903"
* name = "AZ. OSPEDALIERO - UNIVERSITARIA CAREGGI"

Instance: Inline-Instance-for-svc-Bundle-03-6
InstanceOf: Location
// OK
Usage: #inline
* id = "55a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd8"
* name = "AZ. OSPEDALIERO - UNIVERSITARIA CAREGGI"
* address.city = "Firenze"
* address.country = "IT"

Instance: Inline-Instance-for-svc-Bundle-03-7
// OK
InstanceOf: Organization
Usage: #inline
* id = "b66c1b23-21e9-4bd0-9cd7-edd806c126de"
* identifier[0].system = "http://terminology.hl7.it/CodeSystem/minsan-regione"
* identifier[0].value = "090"
* name = "Regione Toscana"

Instance: Inline-Instance-for-svc-Bundle-03-8
// OK
InstanceOf: Practitioner
Usage: #inline
* id = "d7a490a1-d267-4785-ac98-db56748827fb"
* identifier[0].system = "http://hl7.it/sid/codiceFiscale"
* identifier[0].value = "VRDRCR70H08H703B" // VERDI RICCARDO - SALERNO - 08-06-1970
