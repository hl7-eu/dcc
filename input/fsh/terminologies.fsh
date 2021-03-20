//============== ALIAS ===============


//====== Value Set =====================================

ValueSet:      Icd11Covid19Vaccines
Id:	       icd11-vaccines-covid-19
Title:	       "ICD11 Vaccine List (COVID-19)"
Description:   "Vaccine List (COVID-19) from [ICD 11]"

* ^status = #draft
* include $icd11#XM1NL1 "COVID-19 vaccine, inactivated virus"
* include $icd11#XM5DF6 "COVID-19 vaccine, live attenuated virus"
* include $icd11#XM9QW8 "COVID-19 vaccine, non-replicating viral vector"
* include $icd11#XM0CX4 "COVID-19 vaccine, replicating viral vector"
* include $icd11#XM5JC5 "COVID-19 vaccine, virus protein subunit"
* include $icd11#XM1J92 "COVID-19 vaccine, virus like particle (VLP)"
* include $icd11#XM6AT1 "COVID-19 vaccine, DNA based"
* include $icd11#XM6AT1 "COVID-19 vaccine, DNA based"
* include $icd11#XM1NL1 "COVID-19 vaccine, inactivated virus"
* include $icd11#XM5DF6 "COVID-19 vaccine, live attenuated virus"
* include $icd11#XM9QW8 "COVID-19 vaccine, non-replicating viral vector"
* include $icd11#XM0CX4	"COVID-19 vaccine, replicating viral vector"
* include $icd11#XM5JC5	"COVID-19 vaccine, virus protein subunit"
* include $icd11#XM1J92 "COVID-19 vaccine, virus like particle (VLP)"
* include $icd11#XM6AT1 "COVID-19 vaccine, DNA based"
* include $icd11#XM6AT1 "COVID-19 vaccine, DNA based"

//------------------------------------------------

ValueSet:      SctCovid19Vaccines
Id:	       sct-vaccines-covid-19
Title:	       "SNOMED CT Vaccine List (COVID-19)"
Description:   "Vaccine List (COVID-19) from [SNOMED CT]"

* ^status = #draft
* include $sct#1119349007 "SARS-CoV-2 mRNA vaccine"
* include $sct#1119305005 "SARS-CoV-2 antigen vaccine"

//------------------------------------------------

ValueSet:      AtcCovid19Vaccines
Id:	       atc-vaccines-covid-19
Title:	       "ATC Vaccine List (COVID-19)"
Description:   "Vaccine List (COVID-19) from [ATC]"

* ^status = #draft
* include $atc#J07BX03 "covid-19 vaccines"