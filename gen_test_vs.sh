#!/bin/sh

# a script to generate a FHIR ValueSet from the JSON file provided by JRC

curl https://covid-19-diagnostics.jrc.ec.europa.eu/devices/hsc-common-recognition-rat | jq '{ 
  "resourceType": "ValueSet", 
  "status": "draft", 
  "name": "Covid19LabTestManufacturerAndName", 
  "id": "covid-19-lab-test-manufacturer-and-name", 
  "title": "COVID-19 Lab Test Manufacturer And Name", 
  "description": "Examples of COVID-19 Lab Test Manufacturer And Name from https://covid-19-diagnostics.jrc.ec.europa.eu/devices/hsc-common-recognition-rat",
  "version": "0.0.1", 
  "url": "http://hl7.eu/fhir/ig/dgc/ValueSet/covid-19-lab-test-manufacturer-and-name", 
  "compose": { 
    "include": [ 
      { 
        "system": "https://covid-19-diagnostics.jrc.ec.europa.eu/devices", 
        "concept": [ .deviceList | .[] | { "code": .id_device, "display": (.manufacturer.name + ", " + .commercial_name) }
] } ] } }'

