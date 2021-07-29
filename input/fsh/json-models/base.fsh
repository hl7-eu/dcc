Instance: HC1
InstanceOf: StructureDefinition
Description: "EU Digital Covid Certificate"
Title: "EU DCC"
Usage: #definition
* publisher = "HL7 Europe"
* status = #draft
* url = "http://hl7.eu/fhir/ig/dcc/StructureDefinition/HC1"
* name = "dcc"
* title = "EU DCC"
* status = #draft
* experimental = true
* description = "EU Digital Covid Certificate"
* version = "0.0.1"
* mapping[0].identity = "fhir"
* mapping[0].uri = "hl7.org/fhir/r4"
* mapping[0].name = "FHIR"
* kind = #logical
* abstract = true
* type = "HC1"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization
* differential.element[0].id = "HC1"
* differential.element[0].path = "HC1"
* differential.element[0].short = "EU Digital Covid Certificate"
* differential.element[0].definition = "EU Digital Covid Certificate"
* differential.element[0].min = 0
* differential.element[0].max = "1"
* differential.element[1].id = "HC1.ver"
* differential.element[1].path = "HC1.ver"
* differential.element[1].short = "Schema version"
* differential.element[1].definition = "Version of the schema, according to Semantic versioning (ISO, https://semver.org/ version 2.0.0 or newer)"
* differential.element[1].min = 1
* differential.element[1].max = "1"
* differential.element[1].type.code = #string


* differential.element[2].id = "HC1.nam"
* differential.element[2].path = "HC1.nam"
* differential.element[2].short = "Surname(s), forename(s) - in that order"
* differential.element[2].definition = "Surname(s), forename(s) - in that order"
* differential.element[2].min = 1
* differential.element[2].max = "1"
* differential.element[2].type.code = #string


* differential.element[3].id = "HC1.dob"
* differential.element[3].path = "HC1.dob"
* differential.element[3].short = "Date of birth"
* differential.element[3].definition = "Date of Birth of the person addressed in the DCC. ISO 8601 date format restricted to range 1900-2099 or empty"
* differential.element[3].min = 1
* differential.element[3].max = "1"
* differential.element[3].type.code = #date


* differential.element[4].id = "HC1.v"
* differential.element[4].path = "HC1.v"
* differential.element[4].short = "Vaccination Group"
* differential.element[4].definition = "Vaccination Group"
* differential.element[4].min = 0
* differential.element[4].max = "1"
* differential.element[4].type.code = #http://hl7.eu/fhir/ig/dcc/StructureDefinition/v


* differential.element[5].id = "HC1.t"
* differential.element[5].path = "HC1.t"
* differential.element[5].short = "Test Group"
* differential.element[5].definition = "Test Group"
* differential.element[5].min = 0
* differential.element[5].max = "1"
* differential.element[5].type.code = #http://hl7.eu/fhir/ig/dcc/StructureDefinition/t


* differential.element[6].id = "HC1.r"
* differential.element[6].path = "HC1.r"
* differential.element[6].short = "Recovery Group"
* differential.element[6].definition = "Recovery Group"
* differential.element[6].min = 0
* differential.element[6].max = "1"
* differential.element[6].type.code = #http://hl7.eu/fhir/ig/dcc/StructureDefinition/r


