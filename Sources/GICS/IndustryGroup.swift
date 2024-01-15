//
//  IndustryGroup.swift
//  The Global Industry Classification Standard (GICS)
//
//  Copyright © 2024 Joey GM. All rights reserved.
//

extension GICS {
    
    /// The GICS Industry Group.
    public enum IndustryGroup: GICS.Code, GICSRepresentable {
        
        /// The Energy Industry Group (GICS Code: 1010).
        case energy = 1010
        /// The Materials Industry Group (GICS Code: 1510).
        case materials = 1510
        /// The Capital Goods Industry Group (GICS Code: 2010).
        case capitalGoods = 2010
        /// The Commercial & Professional Services Industry Group (GICS Code: 2020).
        case commercialAndProfessionalServices = 2020
        /// The Transportation Industry Group (GICS Code: 2030).
        case transportation = 2030
        /// The Automobiles & Components Industry Group (GICS Code: 2510).
        case automobilesAndComponents = 2510
        /// The Consumer Durables & Apparel Industry Group (GICS Code: 2520).
        case consumerDurablesAndApparel = 2520
        /// The Consumer Services Industry Group (GICS Code: 2530).
        case consumerServices = 2530
        /// The Consumer Discretionary Distribution & Retail Industry Group (GICS Code: 2550).
        case consumerDiscretionaryDistributionAndRetail = 2550
        /// The Consumer Staples Distribution & Retail Industry Group (GICS Code: 3010).
        case consumerStaplesDistributionAndRetail = 3010
        /// The Food, Beverage & Tobacco Industry Group (GICS Code: 3020).
        case foodBeverageAndTobacco = 3020
        /// The Household & Personal Products Industry Group (GICS Code: 3030).
        case householdAndPersonalProducts = 3030
        /// The Health Care Equipment & Services Industry Group (GICS Code: 3510).
        case healthCareEquipmentAndServices = 3510
        /// The Pharmaceuticals, Biotechnology & Life Sciences Industry Group (GICS Code: 3520).
        case pharmaceuticalsBiotechnologyAndLifeSciences = 3520
        /// The Banks Industry Group (GICS Code: 4010).
        case banks = 4010
        /// The Financial Services Industry Group (GICS Code: 4020).
        case financialServices = 4020
        /// The Insurance Industry Group (GICS Code: 4030).
        case insurance = 4030
        /// The Software & Services Industry Group (GICS Code: 4510).
        case softwareAndServices = 4510
        /// The Technology Hardware & Equipment Industry Group (GICS Code: 4520).
        case technologyHardwareAndEquipment = 4520
        /// The Semiconductors & Semiconductor Equipment Industry Group (GICS Code: 4530).
        case semiconductorsAndSemiconductorEquipment = 4530
        /// The Telecommunication Services Industry Group (GICS Code: 5010).
        case telecommunicationServices = 5010
        /// The Media & Entertainment Industry Group (GICS Code: 5020).
        case mediaAndEntertainment = 5020
        /// The Utilities Industry Group (GICS Code: 5510).
        case utilities = 5510
        /// The Equity Real Estate Investment Trusts (REITs) Industry Group (GICS Code: 6010).
        case equityRealEstateInvestmentTrusts = 6010
        /// The Real Estate Management & Development Industry Group (GICS Code: 6020).
        case realEstateManagementAndDevelopment = 6020
        
    }
    
}
