//
//  Industry.swift
//  The Global Industry Classification Standard (GICS)
//
//  Copyright © 2024 Joey GM. All rights reserved.
//

extension GICS {
    
    /// The GICS Industry.
    public enum Industry: GICS.Code, GICSRepresentable {
        
        /// The Energy Equipment & Services Industry (GICS Code: 101010).
        case energyEquipmentAndServices = 101010
        /// The Oil, Gas & Consumable Fuels Industry (GICS Code: 101020).
        case oilGasAndConsumableFuels = 101020
        /// The Chemicals Industry (GICS Code: 151010).
        case chemicals = 151010
        /// The Construction Materials Industry (GICS Code: 151020).
        case constructionMaterials = 151020
        /// The Containers & Packaging Industry (GICS Code: 151030).
        case containersAndPackaging = 151030
        /// The Metals & Mining Industry (GICS Code: 151040).
        case metalsAndMining = 151040
        /// The Paper & Forest Products Industry (GICS Code: 151050).
        case paperAndForestProducts = 151050
        /// The Aerospace & Defense Industry (GICS Code: 201010).
        case aerospaceAndDefense = 201010
        /// The Building Products Industry (GICS Code: 201020).
        case buildingProducts = 201020
        /// The Construction & Engineering Industry (GICS Code: 201030).
        case constructionAndEngineering = 201030
        /// The Electrical Equipment Industry (GICS Code: 201040).
        case electricalEquipment = 201040
        /// The Industrial Conglomerates Industry (GICS Code: 201050).
        case industrialConglomerates = 201050
        /// The Machinery Industry (GICS Code: 201060).
        case machinery = 201060
        /// The Trading Companies & Distributors Industry (GICS Code: 201070).
        case tradingCompaniesAndDistributors = 201070
        /// The Commercial Services & Supplies Industry (GICS Code: 202010).
        case commercialServicesAndSupplies = 202010
        /// The Professional Services Industry (GICS Code: 202020).
        case professionalServices = 202020
        /// The Air Freight & Logistics Industry (GICS Code: 203010).
        case airFreightAndLogistics = 203010
        /// The Passenger Airlines Industry (GICS Code: 203020).
        case passengerAirlines = 203020
        /// The Marine Transportation Industry (GICS Code: 203030).
        case marineTransportation = 203030
        /// The Ground Transportation Industry (GICS Code: 203040).
        case groundTransportation = 203040
        /// The Transportation Infrastructure Industry (GICS Code: 203050).
        case transportationInfrastructure = 203050
        /// The Automobile Components Industry (GICS Code: 251010).
        case automobileComponents = 251010
        /// The Automobiles Industry (GICS Code: 251020).
        case automobiles = 251020
        /// The Household Durables Industry (GICS Code: 252010).
        case householdDurables = 252010
        /// The Leisure Products Industry (GICS Code: 252020).
        case leisureProducts = 252020
        /// The Textiles, Apparel & Luxury Goods Industry (GICS Code: 252030).
        case textilesApparelAndLuxuryGoods = 252030
        /// The Hotels, Restaurants & Leisure Industry (GICS Code: 253010).
        case hotelsRestaurantsAndLeisure = 253010
        /// The Diversified Consumer Services Industry (GICS Code: 253020).
        case diversifiedConsumerServices = 253020
        /// The Distributors Industry (GICS Code: 255010).
        case distributors = 255010
        /// The Broadline Retail Industry (GICS Code: 255030).
        case broadlineRetail = 255030
        /// The Specialty Retail Industry (GICS Code: 255040).
        case specialtyRetail = 255040
        /// The Consumer Staples Distribution & Retail Industry (GICS Code: 301010).
        case consumerStaplesDistributionAndRetail = 301010
        /// The Beverages Industry (GICS Code: 302010).
        case beverages = 302010
        /// The Food Products Industry (GICS Code: 302020).
        case foodProducts = 302020
        /// The Tobacco Industry (GICS Code: 302030).
        case tobacco = 302030
        /// The Household Products Industry (GICS Code: 303010).
        case householdProducts = 303010
        /// The Personal Care Products Industry (GICS Code: 303020).
        case personalCareProducts = 303020
        /// The Health Care Equipment & Supplies Industry (GICS Code: 351010).
        case healthCareEquipmentAndSupplies = 351010
        /// The Health Care Providers & Services Industry (GICS Code: 351020).
        case healthCareProvidersAndServices = 351020
        /// The Health Care Technology Industry (GICS Code: 351030).
        case healthCareTechnology = 351030
        /// The Biotechnology Industry (GICS Code: 352010).
        case biotechnology = 352010
        /// The Pharmaceuticals Industry (GICS Code: 352020).
        case pharmaceuticals = 352020
        /// The Life Sciences Tools & Services Industry (GICS Code: 352030).
        case lifeSciencesToolsAndServices = 352030
        /// The Banks Industry (GICS Code: 401010).
        case banks = 401010
        /// The Financial Services Industry (GICS Code: 402010).
        case financialServices = 402010
        /// The Consumer Finance Industry (GICS Code: 402020).
        case consumerFinance = 402020
        /// The Capital Markets Industry (GICS Code: 402030).
        case capitalMarkets = 402030
        /// The Mortgage Real Estate Investment Trusts (REITs) Industry (GICS Code: 402040).
        case mortgageREITs = 402040
        /// The Insurance Industry (GICS Code: 403010).
        case insurance = 403010
        /// The IT Services Industry (GICS Code: 451020).
        case iTServices = 451020
        /// The Software Industry (GICS Code: 451030).
        case software = 451030
        /// The Communications Equipment Industry (GICS Code: 452010).
        case communicationsEquipment = 452010
        /// The Technology Hardware, Storage & Peripherals Industry (GICS Code: 452020).
        case technologyHardwareStorageAndPeripherals = 452020
        /// The Electronic Equipment, Instruments & Components Industry (GICS Code: 452030).
        case electronicEquipmentInstrumentsAndComponents = 452030
        /// The Semiconductors & Semiconductor Equipment Industry (GICS Code: 453010).
        case semiconductorsAndSemiconductorEquipment = 453010
        /// The Diversified Telecommunication Services Industry (GICS Code: 501010).
        case diversifiedTelecommunicationServices = 501010
        /// The Wireless Telecommunication Services Industry (GICS Code: 501020).
        case wirelessTelecommunicationServices = 501020
        /// The Media Industry (GICS Code: 502010).
        case media = 502010
        /// The Entertainment Industry (GICS Code: 502020).
        case entertainment = 502020
        /// The Interactive Media & Services Industry (GICS Code: 502030).
        case interactiveMediaAndServices = 502030
        /// The Electric Utilities Industry (GICS Code: 551010).
        case electricUtilities = 551010
        /// The Gas Utilities Industry (GICS Code: 551020).
        case gasUtilities = 551020
        /// The Multi-Utilities Industry (GICS Code: 551030).
        case multiUtilities = 551030
        /// The Water Utilities Industry (GICS Code: 551040).
        case waterUtilities = 551040
        /// The Independent Power and Renewable Electricity Producers Industry (GICS Code: 551050).
        case independentPowerAndRenewableElectricityProducers = 551050
        /// The Diversified REITs Industry (GICS Code: 601010).
        case diversifiedREITs = 601010
        /// The Industrial REITs Industry (GICS Code: 601025).
        case industrialREITs = 601025
        /// The Hotel & Resort REITs Industry (GICS Code: 601030).
        case hotelAndResortREITs = 601030
        /// The Office REITs Industry (GICS Code: 601040).
        case officeREITs = 601040
        /// The Health Care REITs Industry (GICS Code: 601050).
        case healthCareREITs = 601050
        /// The Residential REITs Industry (GICS Code: 601060).
        case residentialREITs = 601060
        /// The Retail REITs Industry (GICS Code: 601070).
        case retailREITs = 601070
        /// The Specialized REITs Industry (GICS Code: 601080).
        case specializedREITs = 601080
        /// The Real Estate Management & Development Industry (GICS Code: 602010).
        case realEstateManagementAndDevelopment = 602010
        
    }
    
}
