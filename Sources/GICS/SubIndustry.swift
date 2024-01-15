//
//  SubIndustry.swift
//  The Global Industry Classification Standard (GICS)
//
//  Copyright © 2024 Joey GM. All rights reserved.
//

extension GICS {
    
    /// The GICS Sub-Industry.
    public enum SubIndustry: GICS.Code, GICSRepresentable {
        
        /// The Oil & Gas Drilling Sub-Industry (GICS Code: 10101010).
        ///
        /// Drilling contractors or owners of drilling rigs that contract their services for drilling wells.
        case oilAndGasDrilling = 10101010
        /// The Oil & Gas Equipment & Services Sub-Industry (GICS Code: 10101020).
        ///
        /// Manufacturers of equipment, including drilling rigs and equipment, and providers of supplies and services to companies involved in the drilling, evaluation and completion of oil and gas wells.
        case oilAndGasEquipmentAndServices = 10101020
        /// The Integrated Oil & Gas Sub-Industry (GICS Code: 10102010).
        ///
        /// Integrated oil companies engaged in the exploration & production of oil and gas, as well as at least one other significant activity in either refining, marketing and transportation, or chemicals.
        case integratedOilAndGas = 10102010
        /// The Oil & Gas Exploration & Production Sub-Industry (GICS Code: 10102020).
        ///
        /// Companies engaged in the exploration and production of oil and gas not classified elsewhere.
        case oilAndGasExplorationAndProduction = 10102020
        /// The Oil & Gas Refining & Marketing Sub-Industry (GICS Code: 10102030).
        ///
        /// Companies engaged in the refining and marketing of oil, gas and/or refined products not classified in the Integrated Oil & Gas or Independent Power Producers & Energy Traders Sub-Industries.
        case oilAndGasRefiningAndMarketing = 10102030
        /// The Oil & Gas Storage & Transportation Sub-Industry (GICS Code: 10102040).
        ///
        /// Companies engaged in the storage and/or transportation of oil, gas and/or refined products. Includes diversified midstream natural gas companies, oil and refined product pipelines, coal slurry pipelines and oil & gas shipping companies.
        case oilAndGasStorageAndTransportation = 10102040
        /// The Coal & Consumable Fuels Sub-Industry (GICS Code: 10102050).
        ///
        /// Companies primarily involved in the production and mining of coal, related products and other consumable fuels related to the generation of energy. Excludes companies primarily producing gases classified in the Industrial Gases Sub-Industry and companies primarily mining for metallurgical (coking) coal used for steel production.
        case coalAndConsumableFuels = 10102050
        /// The Commodity Chemicals Sub-Industry (GICS Code: 15101010).
        ///
        /// Companies that primarily produce industrial chemicals and basic chemicals. Including but not limited to plastics, synthetic fibers, films, commodity-based paints & pigments, explosives and petrochemicals. Excludes chemical companies classified in the Diversified Chemicals, Fertilizers & Agricultural Chemicals, Industrial Gases, or Specialty Chemicals Sub-Industries.
        case commodityChemicals = 15101010
        /// The Diversified Chemicals Sub-Industry (GICS Code: 15101020).
        ///
        /// Manufacturers of a diversified range of chemical products not classified in the Industrial Gases, Commodity Chemicals, Specialty Chemicals or Fertilizers & Agricultural Chemicals Sub-Industries.
        case diversifiedChemicals = 15101020
        /// The Fertilizers & Agricultural Chemicals Sub-Industry (GICS Code: 15101030).
        ///
        /// Producers of fertilizers, pesticides, potash or other agriculture-related chemicals not classified elsewhere.
        case fertilizersAndAgriculturalChemicals = 15101030
        /// The Industrial Gases Sub-Industry (GICS Code: 15101040).
        ///
        /// Manufacturers of industrial gases.
        case industrialGases = 15101040
        /// The Specialty Chemicals Sub-Industry (GICS Code: 15101050).
        ///
        /// Companies that primarily produce high value-added chemicals used in the manufacture of a wide variety of products, including but not limited to fine chemicals, additives, advanced polymers, adhesives, sealants and specialty paints, pigments and coatings.
        case specialtyChemicals = 15101050
        /// The Construction Materials Sub-Industry (GICS Code: 15102010).
        ///
        /// Manufacturers of construction materials including sand, clay, gypsum, lime, aggregates, cement, concrete and bricks. Other finished or semi-finished building materials are classified in the Building Products Sub-Industry.
        case constructionMaterials = 15102010
        /// The Metal, Glass & Plastic Containers Sub-Industry (GICS Code: 15103010).
        ///
        /// Manufacturers of metal, glass or plastic containers. Includes corks and caps.
        case metalGlassAndPlasticContainers = 15103010
        /// The Paper & Plastic Packaging Products & Materials Sub-Industry (GICS Code: 15103020).
        ///
        /// Manufacturers of paper and cardboard containers and packaging.
        case paperAndPlasticPackagingProductsAndMaterials = 15103020
        /// The Aluminum Sub-Industry (GICS Code: 15104010).
        ///
        /// Producers of aluminum and related products, including companies that mine or process bauxite and companies that recycle aluminum to produce finished or semi-finished products. Excludes companies that primarily produce aluminum building materials classified in the Building Products Sub-Industry.
        case aluminum = 15104010
        /// The Diversified Metals & Mining Sub-Industry (GICS Code: 15104020).
        ///
        /// Companies engaged in the diversified production or extraction of metals and minerals not classified elsewhere. Including, but not limited to, nonferrous metal mining (except bauxite), salt and borate mining, phosphate rock mining, and diversified mining operations. Excludes iron ore mining, classified in the Steel Sub-Industry, bauxite mining, classified in the Aluminum Sub-Industry, and coal mining, classified in either the Steel or Coal & Consumable Fuels Sub-Industries.
        case diversifiedMetalsAndMining = 15104020
        /// The Copper Sub-Industry (GICS Code: 15104025).
        ///
        /// Companies involved primarily in copper ore mining.
        case copper = 15104025
        /// The Gold Sub-Industry (GICS Code: 15104030).
        ///
        /// Producers of gold and related products, including companies that mine or process gold and the South African finance houses which primarily invest in, but do not operate, gold mines.
        case gold = 15104030
        /// The Precious Metals & Minerals Sub-Industry (GICS Code: 15104040).
        ///
        /// Companies mining precious metals and minerals not classified in the Gold Sub-Industry. Includes companies primarily mining platinum.
        case preciousMetalsAndMinerals = 15104040
        /// The Silver Sub-Industry (GICS Code: 15104045).
        ///
        /// Companies primarily mining silver. Excludes companies classified in the Gold or Precious Metals & Minerals Sub-Industries.
        case silver = 15104045
        /// The Steel Sub-Industry (GICS Code: 15104050).
        ///
        /// Producers of iron and steel and related products, including metallurgical (coking) coal mining used for steel production.
        case steel = 15104050
        /// The Forest Products Sub-Industry (GICS Code: 15105010).
        ///
        /// Manufacturers of timber and related wood products. Includes lumber for the building industry.
        case forestProducts = 15105010
        /// The Paper Products Sub-Industry (GICS Code: 15105020).
        ///
        /// Manufacturers of all grades of paper. Excludes companies specializing in paper packaging classified in the Paper & Plastic Packaging Products & Materials Sub-Industry.
        case paperProducts = 15105020
        /// The Aerospace & Defense Sub-Industry (GICS Code: 20101010).
        ///
        /// Manufacturers of civil or military aerospace and defense equipment, parts or products. Includes defense electronics and space equipment.
        case aerospaceAndDefense = 20101010
        /// The Building Products Sub-Industry (GICS Code: 20102010).
        ///
        /// Manufacturers of building components and home improvement products and equipment. Excludes lumber and plywood classified under Forest Products and cement and other materials classified in the Construction Materials Sub-Industry.
        case buildingProducts = 20102010
        /// The Construction & Engineering Sub-Industry (GICS Code: 20103010).
        ///
        /// Companies engaged in primarily non-residential construction. Includes civil engineering companies and large-scale contractors. Excludes companies classified in the Homebuilding Sub-Industry.
        case constructionAndEngineering = 20103010
        /// The Electrical Components & Equipment Sub-Industry (GICS Code: 20104010).
        ///
        /// Companies that produce electric cables and wires, electrical components or equipment not classified in the Heavy Electrical Equipment Sub-Industry.
        case electricalComponentsAndEquipment = 20104010
        /// The Heavy Electrical Equipment Sub-Industry (GICS Code: 20104020).
        ///
        /// Manufacturers of power-generating equipment and other heavy electrical equipment, including power turbines, heavy electrical machinery intended for fixed-use and large electrical systems. Excludes cables and wires, classified in the Electrical Components & Equipment Sub-Industry.
        case heavyElectricalEquipment = 20104020
        /// The Industrial Conglomerates Sub-Industry (GICS Code: 20105010).
        ///
        /// Diversified industrial companies with business activities in three or more sectors, none of which contributes a majority of revenues. Stakes held are predominantly of a controlling nature and stake holders maintain an operational interest in the running of the subsidiaries.
        case industrialConglomerates = 20105010
        /// The Construction Machinery & Heavy Transportation Equipment Sub-Industry (GICS Code: 20106010).
        ///
        /// Manufacturers of heavy duty trucks, rolling machinery, earth-moving and construction equipment, and manufacturers of related parts. Includes non-military shipbuilding.
        case constructionMachineryAndHeavyTransportationEquipment = 20106010
        /// The Agricultural & Farm Machinery Sub-Industry (GICS Code: 20106015).
        ///
        /// Companies manufacturing agricultural machinery, farm machinery, and their related parts. Includes machinery used for the production of crops and agricultural livestock, agricultural tractors, planting and fertilizing machinery, fertilizer and chemical application equipment, and grain dryers and blowers.
        case agriculturalAndFarmMachinery = 20106015
        /// The Industrial Machinery & Supplies & Components Sub-Industry (GICS Code: 20106020).
        ///
        /// Manufacturers of industrial machinery and industrial components. Includes companies that manufacture presses, machine tools, compressors, pollution control equipment, elevators, escalators, insulators, pumps, roller bearings and other metal fabrications.
        case industrialMachineryAndSuppliesAndComponents = 20106020
        /// The Trading Companies & Distributors Sub-Industry (GICS Code: 20107010).
        ///
        /// Trading companies and other distributors of industrial equipment and products.
        case tradingCompaniesAndDistributors = 20107010
        /// The Commercial Printing Sub-Industry (GICS Code: 20201010).
        ///
        /// Companies providing commercial printing services. Includes printers primarily serving the media industry.
        case commercialPrinting = 20201010
        /// The Environmental & Facilities Services Sub-Industry (GICS Code: 20201050).
        ///
        /// Companies providing environmental and facilities maintenance services. Includes waste management, facilities management and pollution control services. Excludes large-scale water treatment systems classified in the Water Utilities Sub-Industry.
        case environmentalAndFacilitiesServices = 20201050
        /// The Office Services & Supplies Sub-Industry (GICS Code: 20201060).
        ///
        /// Providers of office services and manufacturers of office supplies and equipment not classified elsewhere.
        case officeServicesAndSupplies = 20201060
        /// The Diversified Support Services Sub-Industry (GICS Code: 20201070).
        ///
        /// Companies primarily providing labor oriented support services to businesses and governments. Includes commercial cleaning services, dining & catering services, equipment repair services, industrial maintenance services, industrial auctioneers, storage & warehousing, transaction services, uniform rental services, and other business support services.
        case diversifiedSupportServices = 20201070
        /// The Security & Alarm Services Sub-Industry (GICS Code: 20201080).
        ///
        /// Companies providing security and protection services to business and governments. Includes companies providing services such as correctional facilities, security & alarm services, armored transportation & guarding. Excludes companies providing security software classified under the Systems Software Sub-Industry and home security services classified under the Specialized Consumer Services Sub-Industry. Also excludes companies manufacturing security system equipment classified under the Electronic Equipment & Instruments Sub-Industry.
        case securityAndAlarmServices = 20201080
        /// The Human Resource & Employment Services Sub-Industry (GICS Code: 20202010).
        ///
        /// Companies providing business support services relating to human capital management. This Sub-Industry includes employment agencies, employee training, payroll processing, benefit & retirement support services, corporate & job seeker recruitment services, and online job portals generating revenue from fees or commissions for offering recruitment services to companies or job seekers.
        case humanResourceAndEmploymentServices = 20202010
        /// The Research & Consulting Services Sub-Industry (GICS Code: 20202020).
        ///
        /// Companies primarily providing research and consulting services to businesses and governments not classified elsewhere. Includes companies involved in management consulting services, architectural design, business information or scientific research, marketing, and testing & certification services. Excludes companies providing information technology consulting services classified in the IT Consulting & Other Services Sub-Industry.
        case researchAndConsultingServices = 20202020
        /// The Data Processing & Outsourced Services Sub-Industry (GICS Code: 20202030).
        ///
        /// Providers of commercial data processing and/or business process outsourcing services. This Sub-Industry includes companies providing services for customer experience management, back-office automation, call center management, and investor communications.
        case dataProcessingAndOutsourcedServices = 20202030
        /// The Air Freight & Logistics Sub-Industry (GICS Code: 20301010).
        ///
        /// Companies providing air freight transportation, courier and logistics services, including package and mail delivery and customs agents. Excludes those companies classified in the Passenger Airlines, Marine Transportation, Cargo Ground Transportation and Passenger Ground Transportation Sub-Industries.
        case airFreightAndLogistics = 20301010
        /// The Passenger Airlines Sub-Industry (GICS Code: 20302010).
        ///
        /// Companies providing primarily passenger air transportation.
        case passengerAirlines = 20302010
        /// The Marine Transportation Sub-Industry (GICS Code: 20303010).
        ///
        /// Companies providing goods or passenger maritime transportation. Excludes cruise-ships classified in the Hotels, Resorts & Cruise Lines Sub-Industry.
        case marineTransportation = 20303010
        /// The Rail Transportation Sub-Industry (GICS Code: 20304010).
        ///
        /// Companies providing primarily goods and passenger rail transportation.
        case railTransportation = 20304010
        /// The Cargo Ground Transportation Sub-Industry (GICS Code: 20304030).
        ///
        /// Companies providing ground transportation services for goods and freight.
        case cargoGroundTransportation = 20304030
        /// The Passenger Ground Transportation Sub-Industry (GICS Code: 20304040).
        ///
        /// Companies providing passenger ground transportation and related services, including bus, taxi, vehicle rental, ride sharing and on-demand ride sharing platforms, and other passenger logistics.
        case passengerGroundTransportation = 20304040
        /// The Airport Services Sub-Industry (GICS Code: 20305010).
        ///
        /// Operators of airports and companies providing related services.
        case airportServices = 20305010
        /// The Highways & Railtracks Sub-Industry (GICS Code: 20305020).
        ///
        /// Owners and operators of roads, tunnels and railtracks.
        case highwaysAndRailtracks = 20305020
        /// The Marine Ports & Services Sub-Industry (GICS Code: 20305030).
        ///
        /// Owners and operators of marine ports and related services.
        case marinePortsAndServices = 20305030
        /// The Automotive Parts & Equipment Sub-Industry (GICS Code: 25101010).
        ///
        /// Manufacturers of parts and accessories for automobiles and motorcycles. Excludes companies classified in the Tires & Rubber Sub-Industry.
        case automotivePartsAndEquipment = 25101010
        /// The Tires & Rubber Sub-Industry (GICS Code: 25101020).
        ///
        /// Manufacturers of tires and rubber.
        case tiresAndRubber = 25101020
        /// The Automobile Manufacturers Sub-Industry (GICS Code: 25102010).
        ///
        /// Companies that produce mainly passenger automobiles and light trucks. Excludes companies producing mainly motorcycles and three-wheelers classified in the Motorcycle Manufacturers Sub-Industry and heavy duty trucks classified in the Construction Machinery & Heavy Transportation Equipment Sub-Industry.
        case automobileManufacturers = 25102010
        /// The Motorcycle Manufacturers Sub-Industry (GICS Code: 25102020).
        ///
        /// Companies that produce motorcycles, scooters or three-wheelers. Excludes bicycles classified in the Leisure Products Sub-Industry.
        case motorcycleManufacturers = 25102020
        /// The Consumer Electronics Sub-Industry (GICS Code: 25201010).
        ///
        /// Manufacturers of consumer electronics products including TVs, home audio equipment, game consoles, digital cameras, and related products. Excludes personal home computer manufacturers classified in the Technology Hardware, Storage & Peripherals Sub-Industry, and electric household appliances classified in the Household Appliances Sub-Industry.
        case consumerElectronics = 25201010
        /// The Home Furnishings Sub-Industry (GICS Code: 25201020).
        ///
        /// Manufacturers of soft home furnishings or furniture, including upholstery, carpets and wall-coverings.
        case homeFurnishings = 25201020
        /// The Homebuilding Sub-Industry (GICS Code: 25201030).
        ///
        /// Residential construction companies. Includes manufacturers of prefabricated houses and semi-fixed manufactured homes.
        case homebuilding = 25201030
        /// The Household Appliances Sub-Industry (GICS Code: 25201040).
        ///
        /// Manufacturers of electric household appliances and related products. Includes manufacturers of power and hand tools, including garden improvement tools. Excludes TVs and other audio and video products classified in the Consumer Electronics Sub-Industry and personal computers classified in the Technology Hardware, Storage & Peripherals Sub-Industry.
        case householdAppliances = 25201040
        /// The Housewares & Specialties Sub-Industry (GICS Code: 25201050).
        ///
        /// Manufacturers of durable household products, including cutlery, cookware, glassware, crystal, silverware, utensils, kitchenware and consumer specialties not classified elsewhere.
        case housewaresAndSpecialties = 25201050
        /// The Leisure Products Sub-Industry (GICS Code: 25202010).
        ///
        /// Manufacturers of leisure products and equipment including sports equipment, bicycles and toys.
        case leisureProducts = 25202010
        /// The Apparel, Accessories & Luxury Goods Sub-Industry (GICS Code: 25203010).
        ///
        /// Manufacturers of apparel, accessories & luxury goods. Includes companies primarily producing designer handbags, wallets, luggage, jewelry and watches. Excludes shoes classified in the Footwear Sub-Industry.
        case apparelAccessoriesAndLuxuryGoods = 25203010
        /// The Footwear Sub-Industry (GICS Code: 25203020).
        ///
        /// Manufacturers of footwear. Includes sport and leather shoes.
        case footwear = 25203020
        /// The Textiles Sub-Industry (GICS Code: 25203030).
        ///
        /// Manufacturers of textile and related products not classified in the Apparel, Accessories & Luxury Goods, Footwear or Home Furnishings Sub-Industries.
        case textiles = 25203030
        /// The Casinos & Gaming Sub-Industry (GICS Code: 25301010).
        ///
        /// Owners and operators of casinos and gaming facilities. Includes companies providing lottery and betting services.
        case casinosAndGaming = 25301010
        /// The Hotels, Resorts & Cruise Lines Sub-Industry (GICS Code: 25301020).
        ///
        /// Owners and operators of hotels, resorts and cruise-ships. Includes travel agencies, tour operators and related services not classified elsewhere . Excludes casino-hotels classified in the Casinos & Gaming Sub-Industry.
        case hotelsResortsAndCruiseLines = 25301020
        /// The Leisure Facilities Sub-Industry (GICS Code: 25301030).
        ///
        /// Owners and operators of leisure facilities, including sport and fitness centers, stadiums, golf courses and amusement parks not classified in the Movies & Entertainment Sub-Industry.
        case leisureFacilities = 25301030
        /// The Restaurants Sub-Industry (GICS Code: 25301040).
        ///
        /// Owners and operators of restaurants, bars, pubs, fast-food or take-out facilities. Includes companies that provide food catering services.
        case restaurants = 25301040
        /// The Education Services Sub-Industry (GICS Code: 25302010).
        ///
        /// Companies providing educational services, either on-line or through conventional teaching methods. Includes, private universities, correspondence teaching, providers of educational seminars, educational materials and technical education. Excludes companies providing employee education programs classified in the Human Resources & Employment Services Sub-Industry.
        case educationServices = 25302010
        /// The Specialized Consumer Services Sub-Industry (GICS Code: 25302020).
        ///
        /// Companies providing consumer services not classified elsewhere. Includes residential services, home security, legal services, personal services, renovation & interior design services, consumer auctions and wedding & funeral services.
        case specializedConsumerServices = 25302020
        /// The Distributors Sub-Industry (GICS Code: 25501010).
        ///
        /// Distributors and wholesalers of general merchandise not classified elsewhere. Includes vehicle distributors.
        case distributors = 25501010
        /// The Broadline Retail Sub-Industry (GICS Code: 25503030).
        ///
        /// Retailers offering a wide range of consumer discretionary merchandise. This Sub-Industry includes general and discount merchandise retailers, department stores and on-line retailers and marketplaces selling mostly consumer discretionary merchandise.
        case broadlineRetail = 25503030
        /// The Apparel Retail Sub-Industry (GICS Code: 25504010).
        ///
        /// Retailers specialized mainly in apparel and accessories.
        case apparelRetail = 25504010
        /// The Computer & Electronics Retail Sub-Industry (GICS Code: 25504020).
        ///
        /// Owners and operators of consumer electronics, computers, video and related products retail stores.
        case computerAndElectronicsRetail = 25504020
        /// The Home Improvement Retail Sub-Industry (GICS Code: 25504030).
        ///
        /// Owners and operators of home and garden improvement retail stores. Includes stores offering building materials and supplies.
        case homeImprovementRetail = 25504030
        /// The Other Specialty Retail Sub-Industry (GICS Code: 25504040).
        ///
        /// Owners and operators of specialty retail stores not classified elsewhere. Includes jewelry stores, toy stores, office supply stores, health & vision care stores, and book & entertainment stores.
        case otherSpecialtyRetail = 25504040
        /// The Automotive Retail Sub-Industry (GICS Code: 25504050).
        ///
        /// Owners and operators of stores specializing in automotive retail. Includes auto dealers, gas stations, and retailers of auto accessories, motorcycles & parts, automotive glass, and automotive equipment & parts.
        case automotiveRetail = 25504050
        /// The Home Furnishing Retail Sub-Industry (GICS Code: 25504060).
        ///
        /// Owners and operators of furniture and home furnishings retail stores. Includes residential furniture, home furnishings, housewares, and interior design. Excludes home and garden improvement stores, classified in the Home Improvement Retail Sub-Industry.
        case homeFurnishingRetail = 25504060
        /// The Drug Retail Sub-Industry (GICS Code: 30101010).
        ///
        /// Owners and operators of primarily drug retail stores and pharmacies.
        case drugRetail = 30101010
        /// The Food Distributors Sub-Industry (GICS Code: 30101020).
        ///
        /// Distributors of food products to other companies and not directly to the consumer.
        case foodDistributors = 30101020
        /// The Food Retail Sub-Industry (GICS Code: 30101030).
        ///
        /// Owners and operators of primarily food retail stores.
        case foodRetail = 30101030
        /// The Consumer Staples Merchandise Retail Sub-Industry (GICS Code: 30101040).
        ///
        /// Retailers offering a wide range of consumer staples merchandise such as food, household, and personal care products. This Sub-Industry includes hypermarkets, super centers and other consumer staples retailers such as discount retail spaces and on-line marketplaces selling mostly consumer staples goods.
        case consumerStaplesMerchandiseRetail = 30101040
        /// The Brewers Sub-Industry (GICS Code: 30201010).
        ///
        /// Producers of beer and malt liquors. Includes breweries not classified in the Restaurants Sub-Industry.
        case brewers = 30201010
        /// The Distillers & Vintners Sub-Industry (GICS Code: 30201020).
        ///
        /// Distillers, vintners and producers of alcoholic beverages not classified in the Brewers Sub-Industry.
        case distillersAndVintners = 30201020
        /// The Soft Drinks & Non-alcoholic Beverages Sub-Industry (GICS Code: 30201030).
        ///
        /// Producers of non-alcoholic beverages including mineral waters. Excludes producers of milk classified in the Packaged Foods & Meats Sub-Industry.
        case softDrinksAndNonAlcoholicBeverages = 30201030
        /// The Agricultural Products & Services Sub-Industry (GICS Code: 30202010).
        ///
        /// Producers of agricultural products. Includes crop growers, owners of plantations and companies that produce and process foods but do not package and market them. Excludes companies classified in the Forest Products Sub-Industry and those that package and market the food products classified in the Packaged Foods & Meats Sub-Industry.
        case agriculturalProductsAndServices = 30202010
        /// The Packaged Foods & Meats Sub-Industry (GICS Code: 30202030).
        ///
        /// Producers of packaged foods including dairy products, fruit juices, meats, poultry, fish and pet foods.
        case packagedFoodsAndMeats = 30202030
        /// The Tobacco Sub-Industry (GICS Code: 30203010).
        ///
        /// Manufacturers of cigarettes and other tobacco products.
        case tobacco = 30203010
        /// The Household Products Sub-Industry (GICS Code: 30301010).
        ///
        /// Producers of non-durable household products, including detergents, soaps, diapers and other tissue and household paper products not classified in the Paper Products Sub-Industry.
        case householdProducts = 30301010
        /// The Personal Care Products Sub-Industry (GICS Code: 30302010).
        ///
        /// Manufacturers of personal and beauty care products, including cosmetics and perfumes.
        case personalCareProducts = 30302010
        /// The Health Care Equipment Sub-Industry (GICS Code: 35101010).
        ///
        /// Manufacturers of health care equipment and devices. Includes medical instruments, drug delivery systems, cardiovascular & orthopedic devices, and diagnostic equipment.
        case healthCareEquipment = 35101010
        /// The Health Care Supplies Sub-Industry (GICS Code: 35101020).
        ///
        /// Manufacturers of health care supplies and medical products not classified elsewhere. Includes eye care products, hospital supplies, and safety needle & syringe devices.
        case healthCareSupplies = 35101020
        /// The Health Care Distributors Sub-Industry (GICS Code: 35102010).
        ///
        /// Distributors and wholesalers of health care products not classified elsewhere.
        case healthCareDistributors = 35102010
        /// The Health Care Services Sub-Industry (GICS Code: 35102015).
        ///
        /// Providers of patient health care services not classified elsewhere. Includes dialysis centers, lab testing services, and pharmacy management services. Also includes companies providing business support services to health care providers, such as clerical support services, collection agency services, staffing services and outsourced sales & marketing services.
        case healthCareServices = 35102015
        /// The Health Care Facilities Sub-Industry (GICS Code: 35102020).
        ///
        /// Owners and operators of health care facilities, including hospitals, nursing homes, rehabilitation centers and animal hospitals.
        case healthCareFacilities = 35102020
        /// The Managed Health Care Sub-Industry (GICS Code: 35102030).
        ///
        /// Owners and operators of Health Maintenance Organizations (HMOs) and other managed plans.
        case managedHealthCare = 35102030
        /// The Health Care Technology Sub-Industry (GICS Code: 35103010).
        ///
        /// Companies providing information technology services primarily to health care providers. Includes companies providing application, systems and/or data processing software, internet-based tools, and IT consulting services to doctors, hospitals or businesses operating primarily in the Health Care Sector.
        case healthCareTechnology = 35103010
        /// The Biotechnology Sub-Industry (GICS Code: 35201010).
        ///
        /// Companies primarily engaged in the research, development, manufacturing and/or marketing of products based on genetic analysis and genetic engineering. Includes companies specializing in protein-based therapeutics to treat human diseases. Excludes companies manufacturing products using biotechnology but without a health care application.
        case biotechnology = 35201010
        /// The Pharmaceuticals Sub-Industry (GICS Code: 35202010).
        ///
        /// Companies engaged in the research, development or production of pharmaceuticals. Includes veterinary drugs.
        case pharmaceuticals = 35202010
        /// The Life Sciences Tools & Services Sub-Industry (GICS Code: 35203010).
        ///
        /// Companies enabling the drug discovery, development and production continuum by providing analytical tools, instruments, consumables & supplies, clinical trial services and contract research services. Includes firms primarily servicing the pharmaceutical and biotechnology industries.
        case lifeSciencesToolsAndServices = 35203010
        /// The Diversified Banks Sub-Industry (GICS Code: 40101010).
        ///
        /// Large, geographically diverse banks with a national footprint whose revenues are derived primarily from conventional banking operations, have significant business activity in retail banking and small and medium corporate lending, and provide a diverse range of financial services. Excludes banks classified in the Regional Banks and Commercial & Residential Mortgage Finance Sub-Industries. Also excludes investment banks classified in the Investment Banking & Brokerage Sub-Industry.
        case diversifiedBanks = 40101010
        /// The Regional Banks Sub-Industry (GICS Code: 40101015).
        ///
        /// Commercial banks, savings banks and thrifts whose business are derived primarily from conventional banking operations such as retail banking, corporate lending and originating various residential and commercial mortgage loans funded mainly through deposits. Regional banks tend to operate in limited geographic regions. Excludes companies classified in the Diversified Banks and Commercial & Residential Mortgage Finance Sub-Industries. Also excludes investment banks classified in the Investment Banking & Brokerage Sub-Industry.
        case regionalBanks = 40101015
        /// The Diversified Financial Services Sub-Industry (GICS Code: 40201020).
        ///
        /// Providers of a diverse range of financial services and/or with some interest in a wide range of financial services including banking, insurance and capital markets, but with no dominant business line. Excludes companies classified in the Regional Banks and Diversified Banks Sub-Industries.
        case diversifiedFinancialServices = 40201020
        /// The Multi-Sector Holdings Sub-Industry (GICS Code: 40201030).
        ///
        /// A company with significantly diversified holdings across three or more sectors, none of which contributes a majority of profit and/or sales. Stakes held are predominantly of a non-controlling nature. Includes diversified financial companies where stakes held are of a controlling nature. Excludes other diversified companies classified in the Industrials Conglomerates Sub-Industry.
        case multiSectorHoldings = 40201030
        /// The Specialized Finance Sub-Industry (GICS Code: 40201040).
        ///
        /// Providers of specialized financial services not classified elsewhere. Companies in this Sub-Industry derive a majority of revenue from one specialized line of business. Includes, but not limited to, commercial financing companies, central banks, leasing institutions, factoring services, and specialty boutiques. Excludes companies classified in the Financial Exchanges & Data Sub-Industry.
        case specializedFinance = 40201040
        /// The Commercial & Residential Mortgage Finance Sub-Industry (GICS Code: 40201050).
        ///
        /// Financial companies providing commercial and residential mortgage financing and related mortgage services. This Sub-Industry includes non-deposit funded mortgage lending institutions, building societies, companies providing real estate financing products, loan servicing, mortgage broker services, and mortgage insurance.
        case commercialAndResidentialMortgageFinance = 40201050
        /// The Transaction & Payment Processing Services Sub-Industry (GICS Code: 40201060).
        ///
        /// Providers of transaction & payment processing services and related payment services including digital/mobile payment processors, payment service providers & gateways, and digital wallet providers.
        case transactionAndPaymentProcessingServices = 40201060
        /// The Consumer Finance Sub-Industry (GICS Code: 40202010).
        ///
        /// Providers of consumer finance services, including personal credit, credit cards, lease financing, travel-related money services and pawn shops. Excludes mortgage lenders classified in the Commercial & Residential Mortgage Finance Sub-Industry.
        case consumerFinance = 40202010
        /// The Asset Management & Custody Banks Sub-Industry (GICS Code: 40203010).
        ///
        /// Financial institutions primarily engaged in investment management and/or related custody and securities fee-based services. Includes companies operating mutual funds, closed-end funds and unit investment trusts. Excludes banks and other financial institutions primarily involved in commercial lending, investment banking, brokerage and other specialized financial activities.
        case assetManagementAndCustodyBanks = 40203010
        /// The Investment Banking & Brokerage Sub-Industry (GICS Code: 40203020).
        ///
        /// Financial institutions primarily engaged in investment banking & brokerage services, including equity and debt underwriting, mergers and acquisitions, securities lending and advisory services. Excludes banks and other financial institutions primarily involved in commercial lending, asset management and specialized financial activities.
        case investmentBankingAndBrokerage = 40203020
        /// The Diversified Capital Markets Sub-Industry (GICS Code: 40203030).
        ///
        /// Financial institutions primarily engaged in diversified capital markets activities, including a significant presence in at least two of the following area: large/major corporate lending, investment banking, brokerage and asset management. Excludes less diversified companies classified in the Asset Management & Custody Banks or Investment Banking & Brokerage Sub-Industries. Also excludes companies classified in the Banks or Insurance industry groups or the Consumer Finance Sub-Industry.
        case diversifiedCapitalMarkets = 40203030
        /// The Financial Exchanges & Data Sub-Industry (GICS Code: 40203040).
        ///
        /// Financial exchanges for securities, commodities, derivatives and other financial instruments, and providers of financial decision support tools and products including ratings agencies.
        case financialExchangesAndData = 40203040
        /// The Mortgage REITs Sub-Industry (GICS Code: 40204010).
        ///
        /// Companies or Trusts that service, originate, purchase and/or securitize residential and/or commercial mortgage loans. Includes trusts that invest in mortgage-backed securities and other mortgage related assets.
        case mortgageREITs = 40204010
        /// The Insurance Brokers Sub-Industry (GICS Code: 40301010).
        ///
        /// Insurance and reinsurance brokerage firms.
        case insuranceBrokers = 40301010
        /// The Life & Health Insurance Sub-Industry (GICS Code: 40301020).
        ///
        /// Companies providing primarily life, disability, indemnity or supplemental health insurance. Excludes managed care companies classified in the Managed Health Care Sub-Industry.
        case lifeAndHealthInsurance = 40301020
        /// The Multi-line Insurance Sub-Industry (GICS Code: 40301030).
        ///
        /// Insurance companies with diversified interests in life, health and property and casualty insurance.
        case multilineInsurance = 40301030
        /// The Property & Casualty Insurance Sub-Industry (GICS Code: 40301040).
        ///
        /// Companies providing primarily property and casualty insurance.
        case propertyAndCasualtyInsurance = 40301040
        /// The Reinsurance Sub-Industry (GICS Code: 40301050).
        ///
        /// Companies providing primarily reinsurance.
        case reinsurance = 40301050
        /// The IT Consulting & Other Services Sub-Industry (GICS Code: 45102010).
        ///
        /// Providers of information technology and systems integration services not classified in the Data Processing & Outsourced Services or Internet Software & Services Sub-Industries. Includes information technology consulting and information management services.
        case itConsultingAndOtherServices = 45102010
        /// The Internet Services & Infrastructure Sub-Industry (GICS Code: 45102030).
        ///
        /// Companies providing services and infrastructure for the internet industry including data centers and cloud networking and storage infrastructure. Also includes companies providing web hosting services. Excludes companies classified in the Software Industry.
        case internetServicesAndInfrastructure = 45102030
        /// The Application Software Sub-Industry (GICS Code: 45103010).
        ///
        /// Companies engaged in developing and producing software designed for specialized applications for the business or consumer market. Includes enterprise and technical software, as well as cloud-based software. Excludes companies classified in the Interactive Home Entertainment Sub-Industry. Also excludes companies producing systems or database management software classified in the Systems Software Sub-Industry.
        case applicationSoftware = 45103010
        /// The Systems Software Sub-Industry (GICS Code: 45103020).
        ///
        /// Companies engaged in developing and producing systems and database management software.
        case systemsSoftware = 45103020
        /// The Communications Equipment Sub-Industry (GICS Code: 45201020).
        ///
        /// Manufacturers of communication equipment and products, including LANs, WANs, routers, telephones, switchboards and exchanges. Excludes cellular phone manufacturers classified in the Technology Hardware, Storage & Peripherals Sub-Industry.
        case communicationsEquipment = 45201020
        /// The Technology Hardware, Storage & Peripherals Sub-Industry (GICS Code: 45202030).
        ///
        /// Manufacturers of cellular phones, personal computers, servers, electronic computer components and peripherals. Includes data storage components, motherboards, audio and video cards, monitors, keyboards, printers, and other peripherals. Excludes semiconductors classified in the Semiconductors Sub-Industry.
        case technologyHardwareStorageAndPeripherals = 45202030
        /// The Electronic Equipment & Instruments Sub-Industry (GICS Code: 45203010).
        ///
        /// Manufacturers of electronic equipment and instruments including analytical, electronic test and measurement instruments, scanner/barcode products, lasers, display screens, point-of-sales machines, and security system equipment.
        case electronicEquipmentAndInstruments = 45203010
        /// The Electronic Components Sub-Industry (GICS Code: 45203015).
        ///
        /// Manufacturers of electronic components. Includes electronic components, connection devices, electron tubes, electronic capacitors and resistors, electronic coil, printed circuit board, transformer and other inductors, signal processing technology/components.
        case electronicComponents = 45203015
        /// The Electronic Manufacturing Services Sub-Industry (GICS Code: 45203020).
        ///
        /// Producers of electronic equipment mainly for the OEM (Original Equipment Manufacturers) markets.
        case electronicManufacturingServices = 45203020
        /// The Technology Distributors Sub-Industry (GICS Code: 45203030).
        ///
        /// Distributors of technology hardware and equipment. Includes distributors of communications equipment, computers & peripherals, semiconductors, and electronic equipment and components.
        case technologyDistributors = 45203030
        /// The Semiconductor Materials & Equipment Sub-Industry (GICS Code: 45301010).
        ///
        /// Manufacturers of semiconductor equipment, including manufacturers of the raw material and equipment used in the solar power industry.
        case semiconductorMaterialsAndEquipment = 45301010
        /// The Semiconductors Sub-Industry (GICS Code: 45301020).
        ///
        /// Manufacturers of semiconductors and related products, including manufacturers of solar modules and cells.
        case semiconductors = 45301020
        /// The Alternative Carriers Sub-Industry (GICS Code: 50101010).
        ///
        /// Providers of communications and high-density data transmission services primarily through a high bandwidth/fiber-optic cable network.
        case alternativeCarriers = 50101010
        /// The Integrated Telecommunication Services Sub-Industry (GICS Code: 50101020).
        ///
        /// Operators of primarily fixed-line telecommunications networks and companies providing both wireless and fixed-line telecommunications services not classified elsewhere. Also includes internet service providers offering internet access to end users.
        case integratedTelecommunicationServices = 50101020
        /// The Wireless Telecommunication Services Sub-Industry (GICS Code: 50102010).
        ///
        /// Providers of primarily cellular or wireless telecommunication services.
        case wirelessTelecommunicationServices = 50102010
        /// The Advertising Sub-Industry (GICS Code: 50201010).
        ///
        /// Companies providing advertising, marketing or public relations services.
        case advertising = 50201010
        /// The Broadcasting Sub-Industry (GICS Code: 50201020).
        ///
        /// Owners and operators of television or radio broadcasting systems, including programming. Includes radio and television broadcasting, radio networks, and radio stations.
        case broadcasting = 50201020
        /// The Cable & Satellite Sub-Industry (GICS Code: 50201030).
        ///
        /// Providers of cable or satellite television services. Includes cable networks and program distribution.
        case cableAndSatellite = 50201030
        /// The Publishing Sub-Industry (GICS Code: 50201040).
        ///
        /// Publishers of newspapers, magazines and books in print or electronic formats.
        case publishing = 50201040
        /// The Movies & Entertainment Sub-Industry (GICS Code: 50202010).
        ///
        /// Companies that engage in producing and selling entertainment products and services, including companies engaged in the production, distribution and screening of movies and television shows, producers and distributors of music, entertainment theaters and sports teams. Also includes companies offering and/or producing entertainment content streamed online.
        case moviesAndEntertainment = 50202010
        /// The Interactive Home Entertainment Sub-Industry (GICS Code: 50202020).
        ///
        /// Producers of interactive gaming products, including mobile gaming applications. Also includes educational software used primarily in the home. Excludes online gambling companies classified in the Casinos & Gaming Sub-Industry.
        case interactiveHomeEntertainment = 50202020
        /// The Interactive Media & Services Sub-Industry (GICS Code: 50203010).
        ///
        /// Companies engaging in content and information creation or distribution through proprietary platforms, where revenues are derived primarily through pay-per-click advertisements. Includes search engines, social media and networking platforms, online classifieds, and online review companies.
        case interactiveMediaAndServices = 50203010
        /// The Electric Utilities Sub-Industry (GICS Code: 55101010).
        ///
        /// Companies that produce or distribute electricity. Includes both nuclear and non-nuclear facilities.
        case electricUtilities = 55101010
        /// The Gas Utilities Sub-Industry (GICS Code: 55102010).
        ///
        /// Companies whose main charter is to distribute and transmit natural and manufactured gas. Excludes companies primarily involved in gas exploration or production classified in the Oil & Gas Exploration & Production Sub-Industry. Also excludes companies engaged in the storage and/or transportation of oil, gas, and/or refined products classified in the Oil & Gas Storage & Transportation Sub-Industry.
        case gasUtilities = 55102010
        /// The Multi-Utilities Sub-Industry (GICS Code: 55103010).
        ///
        /// Utility companies with significantly diversified activities in addition to core Electric Utility, Gas Utility and/or Water Utility operations.
        case multiUtilities = 55103010
        /// The Water Utilities Sub-Industry (GICS Code: 55104010).
        ///
        /// Companies that purchase and redistribute water to the end-consumer. Includes large-scale water treatment systems.
        case waterUtilities = 55104010
        /// The Independent Power Producers & Energy Traders Sub-Industry (GICS Code: 55105010).
        ///
        /// Companies that operate as Independent Power Producers (IPPs), Gas & Power Marketing & Trading Specialists and/or Integrated Energy Merchants. Excludes producers of electricity using renewable sources, such as solar power, hydropower, and wind power. Also excludes electric transmission companies and utility distribution companies classified in the Electric Utilities Sub-Industry.
        case independentPowerProducersAndEnergyTraders = 55105010
        /// The Renewable Electricity Sub-Industry (GICS Code: 55105020).
        ///
        /// Companies that engage in the generation and distribution of electricity using renewable sources, including, but not limited to, companies that produce electricity using biomass, geothermal energy, solar energy, hydropower, and wind power. Excludes companies manufacturing capital equipment used to generate electricity using renewable sources, such as manufacturers of solar power systems, installers of photovoltaic cells, and companies involved in the provision of technology, components, and services mainly to this market.
        case renewableElectricity = 55105020
        /// The Diversified REITs Sub-Industry (GICS Code: 60101010).
        ///
        /// A company or Trust with significantly diversified operations across two or more property types.
        case diversifiedREITs = 60101010
        /// The Industrial REITs Sub-Industry (GICS Code: 60102510).
        ///
        /// Companies or Trusts engaged in the acquisition, development, ownership, leasing, management and operation of industrial properties. Includes companies operating industrial warehouses and distribution properties.
        case industrialREITs = 60102510
        /// The Hotel & Resort REITs Sub-Industry (GICS Code: 60103010).
        ///
        /// Companies or Trusts engaged in the acquisition, development, ownership, leasing, management and operation of hotel and resort properties.
        case hotelAndResortREITs = 60103010
        /// The Office REITs Sub-Industry (GICS Code: 60104010).
        ///
        /// Companies or Trusts engaged in the acquisition, development, ownership, leasing, management and operation of office properties.
        case officeREITs = 60104010
        /// The Health Care REITs Sub-Industry (GICS Code: 60105010).
        ///
        /// Companies or Trusts engaged in the acquisition, development, ownership, leasing, management and operation of properties serving the health care industry, including hospitals, nursing homes, and assisted living properties.
        case healthCareREITs = 60105010
        /// The Multi-Family Residential REITs Sub-Industry (GICS Code: 60106010).
        ///
        /// Companies or Trusts engaged in the acquisition, development, ownership, leasing, management and operation of apartments and other multi-family housing including student housing.
        case multiFamilyResidentialREITs = 60106010
        /// The Single-Family Residential REITs Sub-Industry (GICS Code: 60106020).
        ///
        /// Companies or Trusts engaged in the acquisition, development, ownership, leasing, management and operation of single-family residential housing including manufactured homes.
        case singleFamilyResidentialREITs = 60106020
        /// The Retail REITs Sub-Industry (GICS Code: 60107010).
        ///
        /// Companies or Trusts engaged in the acquisition, development, ownership, leasing, management and operation of shopping malls, outlet malls, neighborhood and community shopping centers.
        case retailREITs = 60107010
        /// The Other Specialized REITs Sub-Industry (GICS Code: 60108010).
        ///
        /// Companies or Trusts engaged in the acquisition, development, ownership, leasing, management and operation of properties not classified elsewhere. This Sub-Industry includes REITs that manage and own properties such as natural gas and crude oil pipelines, gas stations, fiber optic cables, prisons, automobile parking, and automobile dealerships.
        case otherSpecializedREITs = 60108010
        /// The Self-Storage REITs Sub-Industry (GICS Code: 60108020).
        ///
        /// Companies or Trusts engaged in the acquisition, development, ownership, leasing, management and operation of self storage properties.
        case selfStorageREITs = 60108020
        /// The Telecom Tower REITs Sub-Industry (GICS Code: 60108030).
        ///
        /// Companies or Trusts engaged in the acquisition, development, ownership, leasing, management and operation of telecom towers and related structures that support wireless telecommunications.
        case telecomTowerREITs = 60108030
        /// The Timber REITs Sub-Industry (GICS Code: 60108040).
        ///
        /// Companies or Trusts engaged in the acquisition, development, ownership, leasing, management and operation of timberland and timber-related properties.
        case timberREITs = 60108040
        /// The Data Center REITs Sub-Industry (GICS Code: 60108050).
        ///
        /// Companies or Trusts engaged in the acquisition, development, ownership, leasing, management and operation of data center properties.
        case dataCenterREITs = 60108050
        /// The Diversified Real Estate Activities Sub-Industry (GICS Code: 60201010).
        ///
        /// Companies engaged in a diverse spectrum of real estate activities including real estate development & sales, real estate management, or real estate services, but with no dominant business line.
        case diversifiedRealEstateActivities = 60201010
        /// The Real Estate Operating Companies Sub-Industry (GICS Code: 60201020).
        ///
        /// Companies engaged in operating real estate properties for the purpose of leasing & management.
        case realEstateOperatingCompanies = 60201020
        /// The Real Estate Development Sub-Industry (GICS Code: 60201030).
        ///
        /// Companies that develop real estate and sell the properties after development. Excludes companies classified in the Homebuilding Sub-Industry.
        case realEstateDevelopment = 60201030
        /// The Real Estate Services Sub-Industry (GICS Code: 60201040).
        ///
        /// Real estate service providers such as real estate agents, brokers & real estate appraisers.
        case realEstateServices = 60201040
        
    }
    
}
