Instance: svc-Bundle-05
// REVIEW
InstanceOf: Bundle
Usage: #example
* identifier.system = "http://hl7.eu/fhir/sid/uvci" 
* identifier.value = "V1IT454557891308174803488707671418"
* identifier.period.start = "2020-12-27"
* type = #document
* timestamp = "2020-12-27T14:30:00+01:00"
* entry[0].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad4d"
* entry[0].resource = Inline-Instance-for-svc-Bundle-05-1
* entry[1].fullUrl = "urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e8"
* entry[1].resource = Inline-Instance-for-svc-Bundle-05-2
* entry[2].fullUrl = "urn:uuid:c220e36c-eb67-4fc4-9ba1-2fabc52acec6"
* entry[2].resource = Inline-Instance-for-svc-Bundle-05-3
* entry[3].fullUrl = "urn:uuid:45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7"
* entry[3].resource = Inline-Instance-for-svc-Bundle-05-4
* entry[4].fullUrl = "urn:uuid:b66c1b23-21e9-4bd0-9cd7-edd806c126de"
* entry[4].resource = Inline-Instance-for-svc-Bundle-05-5
* entry[5].fullUrl = "urn:uuid:d7a490a1-d267-4785-ac98-db56748827fb"
* entry[5].resource = Inline-Instance-for-svc-Bundle-05-6


Instance: Inline-Instance-for-svc-Bundle-05-1
InstanceOf: Composition
Usage: #inline
* id = "30551ce1-5a28-4356-b684-1e639094ad4d"
* identifier.system = "urn:oid:2.16.724.4.8.10.200.10"
* identifier.value = "3f69e0a5-2177-4540-baab-7a5d0877428f"
* status = #final
* type = $loinc#82593-5 "Immunization summary report"
* subject.reference = "urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e8"
* date = "2020-12-27T14:30:00+01:00"
* author[0].reference = "urn:uuid:d7a490a1-d267-4785-ac98-db56748827fb" 
* title = "Vaccine Certificate Covid-19"
* attester[0].mode = #legal
* attester[0].time = "2020-12-27T14:30:00+01:00"
* attester[0].party.reference = "urn:uuid:45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7" //change from organziation t
* custodian.reference = "urn:uuid:b66c1b23-21e9-4bd0-9cd7-edd806c126de"
* section[0].title = "Vaccinations"
* section[0].code = $loinc#11369-6 "Hx of Immunization"
* section[0].text.status = #generated
* section[0].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><strong>Maria Rossi (RSSMRA97L67Z602C)</strong></p>
<p><span>COVID-19 mRNA Vaccine</span></p>
<p>date: 2020-12-27</p>
<ol>
<li>Dose 1/2
<ol>
<li>Date vaccine due: 2021-01-10</li>
<li>Status: due</li>
</ol>
</li>
<li>Dose 2/2
<ol>
<li>Date vaccine due: 2021-02-07</li>
<li>Status: due</li>
</ol>
</li>
</ol></div>"
* section[0].entry[0].reference = "urn:uuid:c220e36c-eb67-4fc4-9ba1-2fabc52acec6" 
// * section[0].entry[1].reference = "urn:uuid:47524493-846a-4a26-bae2-4ab03e60f02e"

Instance: Inline-Instance-for-svc-Bundle-05-2
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



Instance: Inline-Instance-for-svc-Bundle-05-3
InstanceOf: ImmunizationRecommendation
Usage: #inline
* id = "c220e36c-eb67-4fc4-9ba1-2fabc52acec6"
* patient.reference = "urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e8"
* date = "2021-02-05"
// * authority.reference = "urn:uuid:b66c1b23-21e9-4bd0-9cd7-edd806c126de"
* recommendation[0].vaccineCode.coding[0] = $sct#1119349007 "Severe acute respiratory syndrome coronavirus 2 mRNA only vaccine product"
* recommendation[0].forecastStatus = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status#due
* recommendation[0].dateCriterion[0].code = $loinc#30980-7 	"Date vaccine due"
* recommendation[0].dateCriterion[0].value = "2021-01-10"
* recommendation[0].doseNumberPositiveInt = 1
* recommendation[0].seriesDosesPositiveInt = 2
// * recommendation[1].forecastStatus = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status#contraindicated
// * recommendation[1].forecastReason = http://terminology.hl7.org/CodeSystem/v3-ActReason#MEDPREC	"medical precaution"
* recommendation[1].vaccineCode.coding[0] = $sct#1119349007 "Severe acute respiratory syndrome coronavirus 2 mRNA only vaccine product"
* recommendation[1].forecastStatus = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status#due
* recommendation[1].dateCriterion[0].code = $loinc#30980-7 	"Date vaccine due"
* recommendation[1].dateCriterion[0].value = "2021-02-07"
* recommendation[1].doseNumberPositiveInt = 2
* recommendation[1].seriesDosesPositiveInt = 2


Instance: Inline-Instance-for-svc-Bundle-05-4
// OK
InstanceOf: Organization
Usage: #inline
* id = "45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7"
* identifier[0].system = "http://terminology.hl7.it/CodeSystem/minsan-hsp"
* identifier[0].value = "090903"
* name = "AZ. OSPEDALIERO - UNIVERSITARIA CAREGGI"


Instance: Inline-Instance-for-svc-Bundle-05-5
// OK
InstanceOf: Organization
Usage: #inline
* id = "b66c1b23-21e9-4bd0-9cd7-edd806c126de"
* identifier[0].system = "http://terminology.hl7.it/CodeSystem/minsan-regione"
* identifier[0].value = "090"
* name = "Regione Toscana"

Instance: Inline-Instance-for-svc-Bundle-05-6
// OK
InstanceOf: Practitioner
Usage: #inline
* id = "d7a490a1-d267-4785-ac98-db56748827fb"
* identifier[0].system = "http://hl7.it/sid/codiceFiscale"
* identifier[0].value = "VRDRCR70H08H703B" // VERDI RICCARDO - SALERNO - 08-06-1970


