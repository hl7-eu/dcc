Alias: SCT = http://snomed.info/sct
Alias: ATC = http://www.whocc.no/atc
Alias: EMA = http://ema.europa.eu/registration

//------------------------------------------------

ValueSet:      Covid19Vaccines
Id:	       vaccines-covid-19
Title:	       "Vaccine List (COVID-19)"
Description:   "Vaccine List (COVID-19)"

* ^status = #draft
// * SCT#1142178009 "SARS-CoV-2 vaccine"
* SCT#1119349007 "SARS-CoV-2 mRNA vaccine"
* SCT#1119305005 "SARS-CoV-2 antigen vaccine"
* ATC#J07BX03 "covid-19 vaccines"

//------------------------------------------------

ValueSet:      Covid19VaccineNames
Id:	       vaccines-covid-19-names
Title:	       "Vaccine Name List (COVID-19)"
Description:   "Vaccine Name List (COVID-19)"

* ^status = #draft
* EMA#EMEA/H/C/005735 "Comirnaty"
* EMA#EMEA/H/C/005735 "COVID-19 Vaccine Moderna"
* EMA#EMEA/H/C/005675 "COVID-19 Vaccine AstraZeneca"
* EMA#EMEA/H/C/005737 "COVID-19 Vaccine Janssen"
