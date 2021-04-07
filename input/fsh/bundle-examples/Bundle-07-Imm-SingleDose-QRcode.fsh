Instance: svc-Bundle-07
InstanceOf: Bundle
Usage: #example

* identifier.system = "http://hl7.eu/fhir/sid/uvci"
* identifier.value = "V1CZ454557891308174803488707671418"
* identifier.period.start = "2020-12-27T14:30:00+01:00" // I guess that precision to a day would be enough!
* identifier.period.end = "2021-12-27T14:30:00+01:00" // 1 year validity
* type = #document
* timestamp = "2020-12-27T14:30:00+01:00"
* entry[0].fullUrl = "urn:uuid:1afa55c0-ba99-4d76-90d4-87c947b379d6" // Collection
* entry[0].resource = Inline-Instance-for-svc-Bundle-07-1
* entry[1].fullUrl = "urn:uuid:c32fd63f-8705-4e6f-aab6-a64cd64fb938" // Patient
* entry[1].resource = Inline-Instance-for-svc-Bundle-07-2
* entry[2].fullUrl = "urn:uuid:cc9b611a-99b4-4342-a716-4bfbba1d0d1a" // immunization
* entry[2].resource = Inline-Instance-for-svc-Bundle-07-3
* entry[3].fullUrl = "urn:uuid:8de24625-d0bf-451c-bdb1-fbe63ffaa01e" // immunization recomendation
* entry[3].resource = Inline-Instance-for-svc-Bundle-07-4
* entry[4].fullUrl = "urn:uuid:fa5b4571-9347-41be-b102-c201f7da329b"  // issuer
* entry[4].resource = Inline-Instance-for-svc-Bundle-07-5
* entry[5].fullUrl = "urn:uuid:411603a2-81d6-415b-9a1d-ca016ff57dd6"  // Location
* entry[5].resource = Inline-Instance-for-svc-Bundle-07-6
* entry[6].fullUrl = "urn:uuid:ef187374-9ee4-4eaa-ad5c-06ddfdc5b825"  // Binary
* entry[6].resource = Inline-Instance-for-svc-Bundle-07-7


Instance: Inline-Instance-for-svc-Bundle-07-1
InstanceOf: Composition
Usage: #inline

/*=============== 
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div>
		<h3>Digital Green Certificate of Jana Marie Nedostatečně Očkovaná</h3>
		<table>
			<thead>
				<tr>
					<th>Date</th>
					<th>Product</th>
					<th>Vaccine</th>
					<th>Dose</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>2020-12-02</td>
					<td>Comirnaty</td>
					<td>COVID-19 mRNA Vaccine</td>
					<td>1/2</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div>
		<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABUAAAAVCAAAAACMfPpKAAAACXBIWXMAAC4jAAAuIwF4pT92AAAAfElEQVQYlU2QWwrEMAwDR0vuf+XZj8qJSyjIyNYjAkAMQNFhkBCKzoNiin70kxKBN41ENuf7+9AZWQOGRx/2m4TeKy2YO0GyDpwszW5EUCs/ur78NZtGvSa8azdPDGttsonot8LtDFNnrs4yLSbuJk0ajnV3vevhCxUj4Q+R11n764g4WgAAAABJRU5ErkJggg==\"/>
	</div>
</div>"

==== */

* id = "1afa55c0-ba99-4d76-90d4-87c947b379d6"
* identifier.system = "urn:oid:2.16.724.4.8.10.200.10"
* identifier.value = "3f69e0a5-2177-4540-baab-7a5d0877428f"
* status = #final
* type = $loinc#82593-5 "Immunization summary report"
* subject.reference = "urn:uuid:c32fd63f-8705-4e6f-aab6-a64cd64fb938"
* date = "2020-12-27T14:30:00+01:00"
* author[0].display = "MUDr. Aleš Procházka"
* title = "Vaccine Certificate December 27, 2020 14:30"
* confidentiality = #N
* attester[0].mode = #legal
* attester[0].time = "2020-12-27T14:30:00+01:00"
* attester[0].party.reference = "urn:uuid:fa5b4571-9347-41be-b102-c201f7da329b"
* custodian.reference = "urn:uuid:fa5b4571-9347-41be-b102-c201f7da329b"
* section[0].title = "Vaccinations"
* section[0].code = $loinc#11369-6 "Hx of Immunization"
* section[0].text.status = #generated
* section[0].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<table>
		<thead>
			<tr>
				<th>Date</th>
				<th>Product</th>
				<th>Vaccine</th>
				<th>Dose</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>2020-12-02</td>
				<td>Comirnaty</td>
				<td>COVID-19 mRNA Vaccine</td>
				<td>1/2</td>
			</tr>
		</tbody>
	</table>
</div>"
* section[0].entry[0].reference = "urn:uuid:cc9b611a-99b4-4342-a716-4bfbba1d0d1a"
* section[0].entry[1].reference = "urn:uuid:8de24625-d0bf-451c-bdb1-fbe63ffaa01e"
* section[1].entry[0].reference = "urn:uuid:ef187374-9ee4-4eaa-ad5c-06ddfdc5b825"


Instance: Inline-Instance-for-svc-Bundle-07-2
InstanceOf: Patient
Usage: #inline
* id = "c32fd63f-8705-4e6f-aab6-a64cd64fb938"
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
Instance: Inline-Instance-for-svc-Bundle-07-3
InstanceOf: Immunization
Usage: #inline
* id = "cc9b611a-99b4-4342-a716-4bfbba1d0d1a"
* status = #completed
* vaccineCode = $sct#1119349007 "Severe acute respiratory syndrome coronavirus 2 mRNA only vaccine product"
* vaccineCode.text = "Comirnaty"
* patient.reference = "urn:uuid:c32fd63f-8705-4e6f-aab6-a64cd64fb938"
* occurrenceDateTime = "2020-12-02"
* location.reference = "urn:uuid:411603a2-81d6-415b-9a1d-ca016ff57dd6"
* manufacturer.display = "BioNTech Manufacturing GmbH"
* lotNumber = "B1235742"
* performer[0].actor.display = "MUDr. Jan Očko CSc."
* protocolApplied[0].targetDisease[0] = $sct#840533007 "SARS-CoV-2"
* protocolApplied[0].doseNumberPositiveInt = 1
* protocolApplied[0].seriesDosesPositiveInt = 2


Instance: Inline-Instance-for-svc-Bundle-07-4
InstanceOf: ImmunizationRecommendation
Usage: #inline
* id = "8de24625-d0bf-451c-bdb1-fbe63ffaa01e"
* patient.reference = "urn:uuid:c32fd63f-8705-4e6f-aab6-a64cd64fb938"
* date = "2020-12-02"
* authority.reference = "urn:uuid:fa5b4571-9347-41be-b102-c201f7da329b"
* recommendation[0].vaccineCode.coding[0] = $sct#1119349007 "Severe acute respiratory syndrome coronavirus 2 mRNA only vaccine product"
* recommendation[0].forecastStatus = $Immunization-recommendation-status#due "The patient is due for their next vaccination"
* recommendation[0].dateCriterion[0].code = $loinc#30980-7 "Date vaccine due"
* recommendation[0].dateCriterion[0].value = "2020-12-23"
* recommendation[0].doseNumberPositiveInt = 2
* recommendation[0].seriesDosesPositiveInt = 2

Instance: Inline-Instance-for-svc-Bundle-07-5
InstanceOf: Organization
Usage: #inline
* id = "fa5b4571-9347-41be-b102-c201f7da329b"
* identifier[0].system = "urn:oid:1.2.203"
* identifier[0].value = "24341"
* name = "Ministry of Health of the Czech Republic"

Instance: Inline-Instance-for-svc-Bundle-07-6
InstanceOf: Location
Usage: #inline
* id = "411603a2-81d6-415b-9a1d-ca016ff57dd6"
* name = "Hospital Na Františku Prague"
* address.city = "Prague"
* address.country = "CZ"

Instance: Inline-Instance-for-svc-Bundle-07-7
InstanceOf: Binary
Usage: #inline
* id = "ef187374-9ee4-4eaa-ad5c-06ddfdc5b825"
* contentType = #image/png
* data = "iVBORw0KGgoAAAANSUhEUgAAABUAAAAVCAAAAACMfPpKAAAACXBIWXMAAC4jAAAuIwF4pT92AAAAfElEQVQYlU2QWwrEMAwDR0vuf+XZj8qJSyjIyNYjAkAMQNFhkBCKzoNiin70kxKBN41ENuf7+9AZWQOGRx/2m4TeKy2YO0GyDpwszW5EUCs/ur78NZtGvSa8azdPDGttsonot8LtDFNnrs4yLSbuJk0ajnV3vevhCxUj4Q+R11n764g4WgAAAABJRU5ErkJggg=="