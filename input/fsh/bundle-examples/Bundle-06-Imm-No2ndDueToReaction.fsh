Instance: svc-Bundle-06
InstanceOf: Bundle
Usage: #example
* identifier.system = "http://hl7.eu/fhir/sid/uvci"
* identifier.value = "V1CZ454557891308174803488707671418"
* identifier.period.start = "2020-12-27T14:30:00+01:00" // I guess that precision to a day would be enough!
* identifier.period.end = "2021-12-27T14:30:00+01:00" // 1 year validity
* type = #document
* timestamp = "2020-12-27T14:30:00+01:00"
* entry[0].fullUrl = "urn:uuid:35785221-4707-45e3-9c26-f50bd49665ec" // Collection
* entry[0].resource = Inline-Instance-for-svc-Bundle-06-1
* entry[1].fullUrl = "urn:uuid:45598100-e07c-4c4a-a54e-561459dc4dea" // Patient
* entry[1].resource = Inline-Instance-for-svc-Bundle-06-2
* entry[2].fullUrl = "urn:uuid:57d581c1-950c-4fee-8347-63d8b70c03f5" // immunization
* entry[2].resource = Inline-Instance-for-svc-Bundle-06-3
* entry[3].fullUrl = "urn:uuid:e79e9fc2-68ea-4226-8f9f-a8231649d466" // immunization recomendation
* entry[3].resource = Inline-Instance-for-svc-Bundle-06-4
* entry[4].fullUrl = "urn:uuid:45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7"  // issuer
* entry[4].resource = Inline-Instance-for-svc-Bundle-06-5
* entry[5].fullUrl = "urn:uuid:55a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd8"  // Location
* entry[5].resource = Inline-Instance-for-svc-Bundle-06-6  

Instance: Inline-Instance-for-svc-Bundle-06-1
InstanceOf: Composition
Usage: #inline
* id = "35785221-4707-45e3-9c26-f50bd49665ec"
* identifier.system = "urn:oid:2.16.724.4.8.10.200.10"
* identifier.value = "3f69e0a5-2177-4540-baab-7a5d0877428f"
* status = #final
* type = $loinc#82593-5 "Immunization summary report"
* subject.reference = "urn:uuid:45598100-e07c-4c4a-a54e-561459dc4dea"
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
* section[0].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h4>Administered</h4><table border='1'>
<tbody>
<tr>
<th>Date</th>
<th>Dose</th>
<th>Product</th>
<th>Vaccine</th>
<th>Notes</th>
</tr>
<tr>
<td>2020-12-02</td>
<td>1/2</td>
<td>Comirnaty</td>
<td>COVID-19 mRNA Vaccine</td>
<td>Skin rash reaction reported</td>
</tr>
</tbody>
</table>
<p></p>
<h4>Planned</h4>
<table border='1'>
<tbody>
<tr>
<th>Due Date</th>
<th>Dose</th>
<th>Product</th>
<th>Vaccine</th>
<th>Notes</th>
</tr>
<tr>
<td>2020-12-23</td>
<td>2/2</td>
<td>Comirnaty</td>
<td>COVID-19 mRNA Vaccine</td>
<td>Contraindicated due to Propensity to adverse reaction</td>
</tr>
</tbody>
</table>

</div>"
* section[0].entry[0].reference = "urn:uuid:57d581c1-950c-4fee-8347-63d8b70c03f5"
* section[0].entry[1].reference = "urn:uuid:e79e9fc2-68ea-4226-8f9f-a8231649d466"

Instance: Inline-Instance-for-svc-Bundle-06-2
InstanceOf: Patient
Usage: #inline
* id = "45598100-e07c-4c4a-a54e-561459dc4dea"
* identifier[0].type = $v2-0203#NIIP
* identifier[0].system = "urn:oid:1.2.203.24341.1.20.2"
* identifier[0].value = "715511123X"  // non valid national ID number, just an example
// identifier[1].type = can we add a type for a national id card number ?
* identifier[1].system = "urn:oid:1.2.203.24341.1.20.9.1"
* identifier[1].value = "A225961454"
* identifier[2].type = $v2-0203#PPN
* identifier[2].system = "urn:oid:2.16.840.1.113883.4.330.203"
* identifier[2].value = "5484136"
* name[0].family = "Nedostatečně Očkovaná"
* name[0].given[0] = "Jana Marie"
* gender = #female
* birthDate = "1971-05-11"

Instance: Inline-Instance-for-svc-Bundle-06-3
InstanceOf: Immunization
Usage: #inline
* id = "57d581c1-950c-4fee-8347-63d8b70c03f5"
* status = #completed
* vaccineCode = $sct#1119349007 "Severe acute respiratory syndrome coronavirus 2 mRNA only vaccine product"
* vaccineCode.text = "Comirnaty"
* patient.reference = "urn:uuid:45598100-e07c-4c4a-a54e-561459dc4dea"
* occurrenceDateTime = "2020-12-02"
* location.reference = "urn:uuid:55a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd8"
* manufacturer.display = "BioNTech Manufacturing GmbH"
* lotNumber = "B1235742"
* performer[0].actor.display = "MUDr. Jan Očko CSc."
* reaction.detail.display = "skin rash"
* protocolApplied[0].targetDisease[0] = $sct#840533007 "SARS-CoV-2"
* protocolApplied[0].doseNumberPositiveInt = 1
* protocolApplied[0].seriesDosesPositiveInt = 2

Instance: Inline-Instance-for-svc-Bundle-06-4
InstanceOf: ImmunizationRecommendation
Usage: #inline
* id = "e79e9fc2-68ea-4226-8f9f-a8231649d466"
* patient.reference = "urn:uuid:45598100-e07c-4c4a-a54e-561459dc4dea"
* date = "2020-12-02"
* authority.reference = "urn:uuid:45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7"
* recommendation[0].vaccineCode.coding[0] = $sct#1119349007 "Severe acute respiratory syndrome coronavirus 2 mRNA only vaccine product"
* recommendation[0].forecastStatus = $Immunization-recommendation-status#contraindicated //  "The patient is contraindicated for futher doses."
* recommendation[0].forecastReason = $sct#420134006 "Propensity to adverse reaction"  //  "The patient is contraindicated for futher doses."
* recommendation[0].dateCriterion[0].code = $loinc#30980-7 "Date vaccine due"
* recommendation[0].dateCriterion[0].value = "2020-12-23"
* recommendation[0].doseNumberPositiveInt = 2
* recommendation[0].seriesDosesPositiveInt = 2

Instance: Inline-Instance-for-svc-Bundle-06-5
InstanceOf: Organization
Usage: #inline
* id = "45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7"
* identifier[0].system = "urn:oid:1.2.203"
* identifier[0].value = "24341"
* name = "Ministry of Health of the Czech Republic"

Instance: Inline-Instance-for-svc-Bundle-06-6
InstanceOf: Location
Usage: #inline
* id = "55a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd8"
* name = "Hospital Na Františku Prague"
* address.city = "Prague"
* address.country = "CZ"