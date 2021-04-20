Instance: svc-Bundle-08
InstanceOf: Bundle
Usage: #example

/*
2297a908-b4a0-4187-9225-645785e3b883
4ed7156c-7ea7-45ee-9516-f02a4f30eeb0
fc68b096-dc9c-43be-8478-45e1d0615fed
8ded85ec-bab9-47a8-b006-c8c4701e0c53
*/

* identifier.system = "http://hl7.eu/fhir/sid/uvci"
* identifier.value = "V1IT56561234212111112222333344"
* identifier.period.start = "2020-12-27" // I guess that precision to a day would be enough!
* identifier.period.end = "2021-12-27" // 1 year validity
* type = #document
* timestamp = "2020-12-27T14:30:00+01:00"
* entry[0].fullUrl = "urn:uuid:b1995ae1-0c52-48cb-b019-afbfc6f92881" // Collection
* entry[0].resource = Inline-Instance-for-svc-Bundle-08-1
* entry[1].fullUrl = "urn:uuid:194fa246-0822-43ce-8b1e-14efa9c197c2" // Patient
* entry[1].resource = Inline-Instance-for-svc-Bundle-08-2
* entry[2].fullUrl = "urn:uuid:c4b6cb5d-9968-4624-9247-f00e13a43f8c" // immunization
* entry[2].resource = Inline-Instance-for-svc-Bundle-08-3
* entry[3].fullUrl = "urn:uuid:025589f0-2e11-45f5-a63d-375cbf600eb7" // immunization
* entry[3].resource = Inline-Instance-for-svc-Bundle-08-4
* entry[4].fullUrl = "urn:uuid:c42c2a63-1852-4ec9-8cdc-c400ccf3d19d"  // issuer
* entry[4].resource = Inline-Instance-for-svc-Bundle-08-5




Instance: Inline-Instance-for-svc-Bundle-08-1
InstanceOf: Composition
Usage: #inline
* id = "b1995ae1-0c52-48cb-b019-afbfc6f92881"
// * identifier.system = "urn:oid:2.16.724.4.8.10.200.10"
// * identifier.value = "3f69e0a5-2177-4540-baab-7a5d0877428f"
* status = #final
* type = $loinc#82593-5 "Immunization summary report"
* subject.reference = "urn:uuid:194fa246-0822-43ce-8b1e-14efa9c197c2"
* date = "2021-02-26T14:30:00+01:00"
* author[0].reference = "urn:uuid:c42c2a63-1852-4ec9-8cdc-c400ccf3d19d"
* title = "Vaccine Certificate December 27, 2020 14:30"
* confidentiality = #N
* attester[0].mode = #legal
* attester[0].time = "2021-02-26T14:30:00+01:00"
* attester[0].party.reference = "urn:uuid:c42c2a63-1852-4ec9-8cdc-c400ccf3d19d"
* custodian.reference = "urn:uuid:c42c2a63-1852-4ec9-8cdc-c400ccf3d19d"
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
				<td>2021-02-04</td>
				<td>Comirnaty</td>
				<td>COVID-19 mRNA Vaccine</td>
				<td>1</td>
			</tr>
					<tr>
				<td>2021-02-25</td>
				<td>Comirnaty</td>
				<td>COVID-19 mRNA Vaccine</td>
				<td>2</td>
			</tr>
		</tbody>
	</table>
</div>"
* section[0].entry[0].reference = "urn:uuid:c4b6cb5d-9968-4624-9247-f00e13a43f8c"
* section[0].entry[1].reference = "urn:uuid:025589f0-2e11-45f5-a63d-375cbf600eb7"


Instance: Inline-Instance-for-svc-Bundle-08-2
InstanceOf: Patient
Usage: #inline
* id = "194fa246-0822-43ce-8b1e-14efa9c197c2"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[0].valueAddress.country = "Italia"
* extension[0].valueAddress.country.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding"
* extension[0].valueAddress.country.extension[0].valueCoding = $mef-ae-comuni#F979 "NUORO"
* identifier[0].extension[0].url = "http://hl7.it/fhir/StructureDefinition/recordCertification"
* identifier[0].extension[0].extension[0].url = "when"
* identifier[0].extension[0].extension[0].valueDateTime = "2020-04-06"
* identifier[0].extension[0].extension[1].url = "who"
* identifier[0].extension[0].extension[1].valueCodeableConcept = $it-tipoEntita#mef "Ministero Economia e Finanze"
* identifier[0].system = "http://hl7.it/sid/codiceFiscale"
* identifier[0].value = "LGHDNT71E01D612Q"
* active = true
* name[0].use = #official
* name[0].family = "ALIGHIERI"
* name[0].given[0] = "DANTE"
* gender = #male
* birthDate = "1971-05-01"
* address[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/address-official"
* address[0].extension[0].valueBoolean = true
* address[0].use = #home
* address[0].type = #postal
* address[0].text = "Viale della Repubblica 12, PANTIGLIATE - 20090 - Italia"
* address[0].line[0] = "Viale della Repubblica 12, scala 2"
* address[0].line[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address[0].line[0].extension[0].valueString = "Viale della Repubblica"
* address[0].line[0].extension[1].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType"
* address[0].line[0].extension[1].valueString = "VIALE"
* address[0].line[0].extension[2].url = "http://hl7.it/fhir/StructureDefinition/address-dug"
* address[0].line[0].extension[2].valueCodeableConcept = $dug#76 "viale"
* address[0].line[0].extension[3].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase"
* address[0].line[0].extension[3].valueString = "DELLA REPUBBLICA"
* address[0].line[0].extension[4].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address[0].line[0].extension[4].valueString = "12"
* address[0].line[0].extension[5].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator"
* address[0].line[0].extension[5].valueString = "scala 2"
* address[0].city = "PANTIGLIATE"
* address[0].postalCode = "20090"
* address[0].country = "Italia"
* address[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/address-official"
* address[1].extension[0].valueBoolean = false
* address[1].use = #home
* address[1].type = #postal
* address[1].text = "Via Capitolina 27 - interno 5b - 34131 - TRIESTE"
* address[1].line[0] = "Via Capitolina 27 - interno 5b"
* address[1].city = "TRIESTE"
* address[1].postalCode = "34131"
* address[1].country = "Italia"
* address[1].period.start = "2009-06-09T00:00:00+02:00"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "33312345678"

//------------------------------------------
Instance: Inline-Instance-for-svc-Bundle-08-3
InstanceOf: Immunization
Usage: #inline
* id = "c4b6cb5d-9968-4624-9247-f00e13a43f8c"
* status = #completed
* vaccineCode.coding[1] = $sct#1119349007 "Severe acute respiratory syndrome coronavirus 2 mRNA only vaccine product"
* vaccineCode.coding[0] = $aic#049269018 "0,45 ML- CONCENTRATO PER DISPERSIONE INIETTABILE- VIA INTRAMUSCOLARE- FLACONCINO (VETRO) 0,45 ML (6 DOSI)- 195 FLACONCINI MULTIDOSE (1170 DOSI)"
* vaccineCode.coding[2] = $atc#J07BX03 "covid-19 vaccines"
* vaccineCode.coding[3] = $icd11#XM6AT1	"COVID-19 vaccine, DNA based" // To be checked
* vaccineCode.text = "COMIRNATY Vaccino a mRNA contro COVID-19  (modificato a livello dei nucleosidi)"
* patient.reference = "urn:uuid:194fa246-0822-43ce-8b1e-14efa9c197c2"
* occurrenceDateTime = "2021-02-04"

// * location.reference = "urn:uuid:55a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd8" 
// * manufacturer.display = "MODERNA BIOTECH SPAIN, S.L."
* lotNumber = "EL0725" //
* site.text = "deltoide"
* route.text = "intramuscolare"
 
// * performer[0].actor.reference = "urn:uuid:45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7" 
* performer[0].actor.display = "Dr.sa Miccoli Andria"
* performer[1].actor.reference = "urn:uuid:c42c2a63-1852-4ec9-8cdc-c400ccf3d19d" // 
* performer[0].actor.display = "Az. USL Toscana centro"

* protocolApplied[0].targetDisease[0] = $icd-10#J12.82 "Pneumonia due to coronavirus disease 2019" 
* protocolApplied[0].targetDisease[1] = $icd11#XN109 "SARS-CoV-2"
* protocolApplied[0].targetDisease[2] = $sct#840533007 "2019 novel coronavirus"
* protocolApplied[0].doseNumberPositiveInt = 1
// * protocolApplied[0].seriesDosesPositiveInt = 2

//------------------------------------------
Instance: Inline-Instance-for-svc-Bundle-08-4
InstanceOf: Immunization
Usage: #inline

* id = "025589f0-2e11-45f5-a63d-375cbf600eb7"
* status = #completed
* vaccineCode.coding[1] = $sct#1119349007 "Severe acute respiratory syndrome coronavirus 2 mRNA only vaccine product"
* vaccineCode.coding[0] = $aic#049269018 "0,45 ML- CONCENTRATO PER DISPERSIONE INIETTABILE- VIA INTRAMUSCOLARE- FLACONCINO (VETRO) 0,45 ML (6 DOSI)- 195 FLACONCINI MULTIDOSE (1170 DOSI)"
* vaccineCode.coding[2] = $atc#J07BX03 "covid-19 vaccines"
* vaccineCode.coding[3] = $icd11#XM6AT1	"COVID-19 vaccine, DNA based" // To be checked
* vaccineCode.text = "COMIRNATY Vaccino a mRNA contro COVID-19  (modificato a livello dei nucleosidi)"
* patient.reference = "urn:uuid:194fa246-0822-43ce-8b1e-14efa9c197c2"
* occurrenceDateTime = "2021-02-25"
* lotNumber = "EL0727" //
* site.text = "deltoide"
* route.text = "intramuscolare"
// * performer[0].actor.reference = "urn:uuid:45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7" 
* performer[0].actor.display = "Dr.sa Minzoli Alberto"
* performer[1].actor.reference = "urn:uuid:c42c2a63-1852-4ec9-8cdc-c400ccf3d19d" // 
* performer[0].actor.display = "Az. USL Toscana centro"
* protocolApplied[0].targetDisease[0] = $icd-10#J12.82 "Pneumonia due to coronavirus disease 2019" 
* protocolApplied[0].targetDisease[1] = $icd11#XN109 "SARS-CoV-2"
* protocolApplied[0].targetDisease[2] = $sct#840533007 "2019 novel coronavirus"
* protocolApplied[0].doseNumberPositiveInt = 2

Instance: Inline-Instance-for-svc-Bundle-08-5
InstanceOf: Organization
Usage: #inline
* id = "c42c2a63-1852-4ec9-8cdc-c400ccf3d19d"
* identifier[0].system = "http://hl7.it/sid/fls"
* identifier[0].value = "090201"
* identifier[1].system = "http://hl7.it/sid/toscana/asl"
* identifier[1].value = "201"
* identifier[2].system = "http://hl7.it/sid/partitaIva"
* identifier[2].value = "06593810481 " 
* identifier[3].system = "http://hl7.it/sid/codiceFiscale"
* identifier[3].value = "06593810481 " 
* active = true
* type[0] = $it-tipoEntita#asl "Azienda Sanitaria Locale"
* name = "AZIENDA USL TOSCANA CENTRO"
* telecom[0].system = #phone
* telecom[0].value = "(055) 6939222"
* telecom[1].system = #fax
* telecom[1].value = "(055) 6939223"
* telecom[2].system = #email
* telecom[2].value = "direttore.generale@uslcentro.toscana.it"
* telecom[3].system = #url
* telecom[3].value = "www.uslcentro.toscana.it"
* address[0].line[0] = "PIAZZA SANTA MARIA NUOVA 1"
* address[0].city = "FIRENZE"
* address[0].city.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding"
* address[0].city.extension[0].valueCoding = $istat-unitaAmministrativeTerritoriali#007003 "AOSTA"
* address[0].district = "FI"
* address[0].state = "TOSCANA"
* address[0].state.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding"
* address[0].state.extension[0].valueCoding = $minsan-regione#090 "TOSCANA"
* address[0].postalCode = "50122"
* address[0].country = "IT"

