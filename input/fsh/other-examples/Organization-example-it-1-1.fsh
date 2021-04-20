Instance: org-example-it
InstanceOf: Organization
Usage: #example

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
* telecom[2].value = "mailto:direttore.generale@uslcentro.toscana.it"
* telecom[3].system = #url
* telecom[3].value = "http://www.uslcentro.toscana.it"
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