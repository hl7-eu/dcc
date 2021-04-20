Instance: example-it-1-2
InstanceOf: Immunization
Usage: #example

* status = #completed
* vaccineCode.coding[1] = $sct#1119349007 "Severe acute respiratory syndrome coronavirus 2 mRNA only vaccine product"
* vaccineCode.coding[0] = $aic#049269018 "0,45 ML- CONCENTRATO PER DISPERSIONE INIETTABILE- VIA INTRAMUSCOLARE- FLACONCINO (VETRO) 0,45 ML (6 DOSI)- 195 FLACONCINI MULTIDOSE (1170 DOSI)"
* vaccineCode.coding[2] = $atc#J07BX03 "covid-19 vaccines"
* vaccineCode.coding[3] = $icd11#XM6AT1	"COVID-19 vaccine, DNA based" // To be checked
* vaccineCode.text = "COMIRNATY Vaccino a mRNA contro COVID-19  (modificato a livello dei nucleosidi)"
* patient.reference = "Patient/example-it-1"
* occurrenceDateTime = "2021-02-25"
* lotNumber = "EL0727" //
* site.text = "deltoide"
* route.text = "intramuscolare"
 
// * performer[0].actor.reference = "urn:uuid:45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7" 
* performer[0].actor.display = "Dr.sa Minzoli Alberto"
* performer[1].actor.reference = "Organization/org-example-it" // 
* performer[0].actor.display = "Az. USL Toscana centro"

* protocolApplied[0].targetDisease[0] = $icd-10#J12.82 "Pneumonia due to coronavirus disease 2019" 
* protocolApplied[0].targetDisease[1] = $icd11#XN109 "SARS-CoV-2"
* protocolApplied[0].targetDisease[2] = $sct#840533007 "2019 novel coronavirus"
* protocolApplied[0].doseNumberPositiveInt = 2
