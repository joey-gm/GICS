# The Global Industry Classification Standard (GICS)

Welcome to the **GICS Swift library**! This library implements the [Global Industry Classification Standard](https://www.msci.com/our-solutions/indexes/gics) (GICS), providing users with the ability to parse GICS codes and retrieve relevant information about GICS classifications.

## 1. GICS Overview
The Global Industry Classification Standard is an industry analysis framework that helps investors understand the key business activities for companies around the world. MSCI and S&P Dow Jones Indices developed this classification standard to provide investors with consistent and exhaustive industry definitions.
- GICS is a four-tiered, hierarchical industry classification system. The four tiers are: Sectors, Industry Groups, Industries and Sub-Industries.
- All definitions are standardized and applied to companies globally.
- Each company is assigned a single GICS classification in each of the four tiers, according to its principal business activity.
- Revenues is a key factor in determining a firm’s principal business activity.
- Earnings and market perception, however, are also recognized as important and relevant information for classification purposes, and are taken into account during the annual review process.

![GICS Infographic](https://www.msci.com/documents/1296102/38146359/GICS-infographic-final.svg)

## 2. GICS Annual Review
GICS is reviewed annually to ensure it remains fully representative of global market dynamics. This Swift library reflects the [GICS structure effective March 17, 2023](https://www.msci.com/documents/1296102/29559863/GICS_Structure_Change_Doc_31_March_2022.pdf).

## 3. Framework Design
The hierarchical design of the 8-digit GICS coding system allows for easy transition between GICS tiers. The `GICSRepresentable` protocol defines methods and properties for retrieving GICS classification information, with default implementations based on the GICS structure. The key requirement of `GICSRepresentable` is a `rawValue` that corresponds to the specific GICS code.

The `GICS` is an enumeration that conforms to the `GICSRepresentable` protocol, representing all four GICS tiers with an associated value corresponds to the GICS classification. The four GICS tiers are defined as enumerations, namely `GICS.Sector`, `GICS.IndustryGroup`, `GICS.Industry`, and `GICS.SubIndustry`. Each enumeration case corresponds to a GICS classification within its respective tier.

Find more details in the [documentation](https://joey-gm.github.io/GICS/documentation/gics).

## 4. Usage Guide
### 4.1 Using the GICS Swift Library
In the `Package.swift` Swift Package Manager manifest, add the following dependency to the `dependencies` argument:
```swift
.package(url: "https://github.com/joey-gm/GICS", from: "2023.3.17")
```
Add the dependency to any targets declared in the manifest:
```swift
.target(name: "MyTarget", dependencies: ["GICS"])
```

### 4.2 Initialization
Initialize GICS instances using GICS codes:
```swift
let possibleGICS_a = GICS(rawValue: 40)
// possibleGICS_a is of type GICS? and equals GICS.sector(.financials)

let possibleGICS_b = GICS(rawValue: 4020)
// possibleGICS_b is of type GICS? and equals GICS.industryGroup(.financialServices)

let possibleGICS_c = GICS(rawValue: 402030)
// possibleGICS_c is of type GICS? and equals GICS.industry(.capitalMarkets)

let possibleGICS_d = GICS(rawValue: 40203020)
// possibleGICS_d is of type GICS? and equals GICS.subIndustry(.investmentBankingAndBrokerage)

let possibleGICS_e = GICS(rawValue: 12345678)
// possibleGICS_e is of type GICS? and equals nil
// ('12345678' is not a valid GICS code.)

let possibleSubIndustry_f = GICS.SubIndustry(rawValue: 40203020)
// possibleSubIndustry_f is of type GICS.SubIndustry? and equals GICS.SubIndustry.investmentBankingAndBrokerage

let possibleSubIndustry_g = GICS.SubIndustry(rawValue: 4020)
// possibleSubIndustry_g is of type GICS.SubIndustry? and equals nil
// (While '4020' is valid GICS code, it is an Industry Group level code and not a valid Sub-Industry level code.)

let possibleIndustryGroup_h = GICS.IndustryGroup(rawValue: 4020)
// possibleIndustryGroup_h is of type GICS.IndustryGroup? and equals GICS.IndustryGroup.financialServices
```
Initialize GICS instances with known classifications:
```swift
let knownGICS_a = GICS.sector(.informationTechnology)
// knownGICS_a is of type GICS and its rawValue equals to '45'

let knownGICS_b = GICS.IndustryGroup.softwareAndServices
// knownGICS_b is of type GICS.IndustryGroup and its rawValue equals to '4510'

let knownGICS_c = GICS.industry(.software)
// knownGICS_c is of type GICS and its rawValue equals to '451030'

let knownGICS_d = GICS.SubIndustry.applicationSoftware
// knownGICS_d is of type GICS.SubIndustry and its rawValue equals to '45103010'
```

### 4.3 Retrieve GICS Information
Retrieve GICS code, description, and definition:
```swift
let gics_a = GICS.SubIndustry.applicationSoftware
// gics_a is of type GICS.SubIndustry and its rawValue equals to '45103010'

gics_a.description
// Application Software

gics_a.definition
// Companies engaged in developing and producing software designed for specialized applications for the business or consumer market. Includes enterprise and technical software, as well as cloud-based software. Excludes companies classified in the Interactive Home Entertainment Sub-Industry. Also excludes companies producing systems or database management software classified in the Systems Software Sub-Industry.

gics_a.id
// 45103010
// (Equivalent to gics_a.rawValue)
```
GICS Hierarchy:
```swift
let gics_b = GICS(rawValue: 451030)!
// gics_b is of type GICS and equals GICS.industry(.software)

gics_b.isSector
// false

gics_b.isIndustryGroup
// false

gics_b.isIndustry
// true

gics_b.isSubIndustry
// false
```

### 4.4 Lookup and Determine GICS Hierarchical Relationships
Lookup parent or child classifications:
```swift
let gics_c = GICS.subIndustry(.investmentBankingAndBrokerage)
// gics_c is a GICS Sub-Industry classification and its rawValue equals to '40203020'

let gics_c_industry = gics_c.industry
// gics_c_industry is of type GICS.Industry? and equals GICS.Industry.capitalMarkets (GICS code: '402030')

let gics_c_industryGroup = gics_c.industryGroup
// gics_c_industryGroup is of type GICS.IndustryGroup? and equals GICS.IndustryGroup.financialServices (GICS code: '4020')

let gics_c_sector = gics_c.sector
// gics_c_sector is of type GICS.Sector and equals GICS.Sector.financials (GICS code: '40')
```
Child classification lookup from a parent classification could result in nil if the child classification is indeterminate:
```swift
let sector_a = GICS.Sector.financials
// sector_a is a GICS Sector classification and its rawValue equals to '40'

let sector_a_to_industryGroup = sector_a.industryGroup
// sector_a_to_industryGroup is of type GICS.IndustryGroup? and equals to nil
// The value is nil because the GICS Industry Group is indeterminate, i.e. there are more than one possible GICS Industry Group (Banks, Financial Services, Insurance) for the given GICS Sector (GICS.Sector.financials).

let sector_b = GICS.Sector.energy
// sector_b is a GICS Sector classification and its rawValue equals to '10'

let sector_b_to_industryGroup = sector_b.industryGroup
// sector_b_to_industryGroup equals GICS.IndustryGroup.energy (GICS code: '1010')
// The Industry Group (child) of the Energy Sector (parent) can be determined since there is only one GICS Industry Group within the Energy Sector.

let industry_a = GICS.Industry.capitalMarkets
// industry_a is a GICS Industry classification and its rawValue equals to '402030'

let industry_a_to_subIndustry = industry_a.subIndustry
// industry_a_to_subIndustry is of type GICS.SubIndustry? and equals to nil
// The value is nil because the GICS Sub-Industry is indeterminate, i.e. there are more than one possible GICS Sub-Industry (Asset Management & Custody Banks, Investment Banking & Brokerage, Diversified Capital Markets, Financial Exchanges & Data) for the given GICS Industry (GICS.Industry.capitalMarkets).

let industry_b = GICS.Industry.passengerAirlines
// industry_b is a GICS Industry classification and its rawValue equals to '203020'

let industry_b_to_subIndustry = industry_b.subIndustry
// industry_b_to_subIndustry equals GICS.SubIndustry.passengerAirlines (GICS code: '20302010')
// The Sub-Industry (child) of the Passenger Airlines Industry (parent) can be determined since there is only one GICS Sub-Industry within the Passenger Airlines Industry.
```
Determine whether the GICS instance belongs to the given parent classification:
```swift
GICS.IndustryGroup.softwareAndServices.belongs(to: GICS.Sector.informationTechnology)
// true

GICS.Industry.software.belongs(to: GICS.Sector.informationTechnology)
// true

GICS.SubIndustry.applicationSoftware.belongs(to: GICS.Industry.software)
// true

GICS.Industry.software.belongs(to: GICS.SubIndustry.applicationSoftware)
// false

GICS.Industry.software.belongs(to: GICS.IndustryGroup.financialServices)
// false

GICS.Industry.capitalMarkets.belongs(to: GICS.IndustryGroup.financialServices)
// true
```
Determine whether the GICS instance contains the given child classification:
```swift
GICS.IndustryGroup.financialServices.contains(GICS.Industry.capitalMarkets)
// true

GICS.Sector.financials.contains(GICS.SubIndustry.investmentBankingAndBrokerage)
// true

GICS.Sector.financials.contains(GICS.SubIndustry.applicationSoftware)
// false

GICS.SubIndustry.investmentBankingAndBrokerage.contains(GICS.Sector.financials)
// false
```
Access collections of all possible child GICS classifications:
```swift
let gics_d = GICS.Sector.consumerDiscretionary
// gics_d is of type GICS.Sector and its rawValue equals to '25'

let industryGroups = gics_d.industryGroups
// [Automobiles & Components, Consumer Durables & Apparel, Consumer Services, Consumer Discretionary Distribution & Retail]

let industryGroups_first = industryGroups.first!
// industryGroups_first is of type GICS.IndustryGroup and equals GICS.IndustryGroup.automobilesAndComponents (GICS code: '2510')

let industries = industryGroups_first.industries
// [Automobile Components, Automobiles]

let industries_first = industries.first!
// industries_first is of type GICS.Industry and equals GICS.Industry.automobileComponents (GICS code: '251010')

let subIndustries = industries_first.subIndustries
// [Automotive Parts & Equipment, Tires & Rubber]

let subIndustries_first = subIndustries.first!
// subIndustries_first is of type GICS.SubIndustry and equals GICS.SubIndustry.automotivePartsAndEquipment (GICS code: '25101010')

let subIndustries_first_industryGroups = subIndustries_first.industryGroups
// [Automobiles & Components]
// Retrieving all possible parent classifications from a child classification results in a Collection of One, containing only the parent classification.
```

### 4.5 CaseIterable
Access collections of all GICS classifications with the `allCases` static property or the relevant `GICS` properties:
```swift
let allSectors = GICS.allSectors
// [Energy, Materials, Industrials, Consumer Discretionary, Consumer Staples, ...]
// (Equivalent to GICS.Sector.allCases)

let allIndustryGroups = GICS.allIndustryGroups
// [Energy, Materials, Capital Goods, Commercial & Professional Services, Transportation, ...]
// (Equivalent to GICS.IndustryGroup.allCases)

let allIndustries = GICS.allIndustries
// [Energy Equipment & Services, Oil, Gas & Consumable Fuels, Chemicals, ...]
// (Equivalent to GICS.Industry.allCases)

let allSubIndustries = GICS.allSubIndustries
// [Oil & Gas Drilling, Oil & Gas Equipment & Services, Integrated Oil & Gas, ...]
// (Equivalent to GICS.SubIndustry.allCases)
```

## 5. Localizations
GICS definitions and descriptions are localized in the String Catalog, with the GICS code being the localization key.
#### GICS Sector Definitions:
[English](https://www.msci.com/documents/1296102/11185224/GICS+Sector+Definitions+2023.pdf), [Japanese](https://www.spglobal.com/spdji/jp/landing/topic/gics/), [Korean](https://www.spglobal.com/spdji/kr/landing/topic/gics/), [Portuguese](https://www.spglobal.com/spdji/pt/landing/topic/gics/), [Simplified Chinese](https://www.spglobal.com/spdji/zh/landing/topic/gics/), [Traditional Chinese](https://www.spglobal.com/spdji/tc/landing/topic/gics/), and [Spanish](https://www.spglobal.com/spdji/es/landing/topic/gics/).
#### GICS Sub-Industry Definitions:
[English](https://www.msci.com/documents/1296102/11185224/GICS+Map+2023.xlsx), [French](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_French.xlsx), [German](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_German.xlsx), [Italian](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Italian.xlsx), [Japanese](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Japanese.xlsx), [Korean](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Korean.xlsx), [Portuguese](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Portuguese.xlsx), [Russian](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Russian.xlsx), [Simplified Chinese](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Simplified+Chinese.xlsx), [Traditional Chinese](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Traditional+Chinese.xlsx), and [Spanish](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Spanish.xlsx).
#### GICS Descriptions (All four GICS tiers and classifications):
[English](https://www.msci.com/documents/1296102/11185224/GICS+Map+2023.xlsx), [French](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_French.xlsx), [German](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_German.xlsx), [Italian](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Italian.xlsx), [Japanese](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Japanese.xlsx), [Korean](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Korean.xlsx), [Portuguese](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Portuguese.xlsx), [Russian](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Russian.xlsx), [Simplified Chinese](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Simplified+Chinese.xlsx), [Traditional Chinese](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Traditional+Chinese.xlsx), and [Spanish](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Spanish.xlsx).

## 6. References
- [GICS Overview](https://www.msci.com/documents/1296102/11185224/MSCI_GCIS-cfs-fin.pdf)
- GICS Guiding Principles and Methodology by [MSCI](https://www.msci.com/index/methodology/latest/GICS) and [S&P Global](https://www.spglobal.com/spdji/en/documents/methodologies/methodology-gics.pdf)
