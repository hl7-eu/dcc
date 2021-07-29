Instance: fn
InstanceOf: StructureDefinition
Description: "Person name: Surname(s), forename(s) - in that order"
Title: "Person name"
Usage: #definition
* publisher = "HL7 Europe"
* status = #draft
* url = "http://hl7.eu/fhir/ig/dcc/StructureDefinition/PersonName"
* name = "PersonName"
* title = "Person name"
* status = #draft
* experimental = true
* description = "Person name: Surname(s), forename(s) - in that order"
* version = "0.0.1"
* mapping[0].identity = "fhir"
* mapping[0].uri = "hl7.org/fhir/r4"
* mapping[0].name = "FHIR"
* kind = #logical
* abstract = true
* type = "PersonName"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization
* differential.element[0].id = "PersonName"
* differential.element[0].path = "PersonName"
* differential.element[0].short = "Person name"
* differential.element[0].definition = "Person name: Surname(s), forename(s) - in that order"
* differential.element[0].min = 1
* differential.element[0].max = "1"
* differential.element[1].id = "PersonName.fn"
* differential.element[1].path = "PersonName.fn"
* differential.element[1].short = "Surname"
* differential.element[1].definition = "The surname or primary name(s) of the person addressed in the certificate"
* differential.element[1].min = 0
* differential.element[1].max = "1"
* differential.element[1].type.code = #string
* differential.element[2].id = "PersonName.fnt"
* differential.element[2].path = "PersonName.fnt"
* differential.element[2].short = "Standardised surname"
* differential.element[2].definition = "The surname(s) of the person, transliterated ICAO 9303"
* differential.element[2].min = 1
* differential.element[2].max = "1"
* differential.element[2].type.code = #string
* differential.element[3].id = "PersonName.gn"
* differential.element[3].path = "PersonName.gn"
* differential.element[3].short = "Forename"
* differential.element[3].definition = "The forename(s) of the person addressed in the certificate"
* differential.element[3].min = 0
* differential.element[3].max = "1"
* differential.element[3].type.code = #string
* differential.element[4].id = "PersonName.gnt"
* differential.element[4].path = "PersonName.gnt"
* differential.element[4].short = "Standardised forename"
* differential.element[4].definition = "The forename(s) of the person, transliterated ICAO 9303"
* differential.element[4].min = 0
* differential.element[4].max = "1"
* differential.element[4].type.code = #string
