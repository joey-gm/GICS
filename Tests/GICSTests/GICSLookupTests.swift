import XCTest
@testable import GICS

final class GICSLookupTests: XCTestCase {
    
    func testAllCases() throws {
        GICS.allCases.forEach {
            XCTAssertNotNil($0.sector, $0.description)
            XCTAssertGreaterThanOrEqual($0.industryGroups.endIndex, 1, $0.description)
            XCTAssertGreaterThanOrEqual($0.industries.endIndex, 1, $0.description)
            XCTAssertGreaterThanOrEqual($0.subIndustries.endIndex, 1, $0.description)
            switch $0 {
            case .sector:
                break
            case .industryGroup:
                XCTAssertNotNil($0.industryGroup, $0.description)
            case .industry:
                XCTAssertNotNil($0.industryGroup, $0.description)
                XCTAssertNotNil($0.industry, $0.description)
            case .subIndustry:
                XCTAssertNotNil($0.industryGroup, $0.description)
                XCTAssertNotNil($0.industry, $0.description)
                XCTAssertNotNil($0.subIndustry, $0.description)
            }
        }
    }
    
    func testSectorLookup() throws {
        XCTAssertEqual(GICS.IndustryGroup.semiconductorsAndSemiconductorEquipment.sector, GICS.Sector.informationTechnology)
        XCTAssertEqual(GICS.Industry.hotelsRestaurantsAndLeisure.sector, GICS.Sector.consumerDiscretionary)
        XCTAssertEqual(GICS.SubIndustry.renewableElectricity.sector, GICS.Sector.utilities)
    }
    
    func testIndustryGroupLookup() throws {
        XCTAssertEqual(GICS.Sector.consumerDiscretionary.industryGroups.last!, GICS.IndustryGroup.consumerDiscretionaryDistributionAndRetail)
        XCTAssertEqual(GICS.Industry.beverages.industryGroup, GICS.IndustryGroup.foodBeverageAndTobacco)
        XCTAssertEqual(GICS.SubIndustry.broadcasting.industryGroup, GICS.IndustryGroup.mediaAndEntertainment)
        GICS.allSectors.forEach {
            let industryGroup = $0.industryGroup
            if $0.industryGroups.endIndex == 1 {
                XCTAssertNotNil(industryGroup)
            } else {
                XCTAssertNil(industryGroup)
            }
            switch $0 {
            case .energy:
                XCTAssertEqual(industryGroup, GICS.IndustryGroup.energy)
            case .materials:
                XCTAssertEqual(industryGroup, GICS.IndustryGroup.materials)
            case .utilities:
                XCTAssertEqual(industryGroup, GICS.IndustryGroup.utilities)
            default:
                XCTAssertNil(industryGroup)
            }
        }
    }
    
    func testIndustryLookup() throws {
        XCTAssertEqual(GICS.Sector.healthCare.industries.last!, GICS.Industry.lifeSciencesToolsAndServices)
        XCTAssertEqual(GICS.IndustryGroup.financialServices.industries.last!, GICS.Industry.mortgageREITs)
        XCTAssertEqual(GICS.SubIndustry.textiles.industry, GICS.Industry.textilesApparelAndLuxuryGoods)
        GICS.allSectors.forEach {
            XCTAssertGreaterThan($0.industries.endIndex, 1, $0.description)
            XCTAssertNil($0.industry)
        }
        GICS.allIndustryGroups.forEach {
            let industry = $0.industry
            if $0.industries.endIndex == 1 {
                XCTAssertNotNil(industry)
            } else {
                XCTAssertNil(industry)
            }
            switch $0 {
            case .banks:
                XCTAssertEqual(industry, GICS.Industry.banks)
            case .consumerStaplesDistributionAndRetail:
                XCTAssertEqual(industry, GICS.Industry.consumerStaplesDistributionAndRetail)
            case .insurance:
                XCTAssertEqual(industry, GICS.Industry.insurance)
            case .realEstateManagementAndDevelopment:
                XCTAssertEqual(industry, GICS.Industry.realEstateManagementAndDevelopment)
            case .semiconductorsAndSemiconductorEquipment:
                XCTAssertEqual(industry, GICS.Industry.semiconductorsAndSemiconductorEquipment)
            default:
                XCTAssertNil(industry)
            }
        }
    }
    
    func testSubIndustryLookup() throws {
        XCTAssertEqual(GICS.Sector.communicationServices.subIndustries.last!, GICS.SubIndustry.interactiveMediaAndServices)
        XCTAssertEqual(GICS.IndustryGroup.transportation.subIndustries.last!, GICS.SubIndustry.marinePortsAndServices)
        XCTAssertEqual(GICS.Industry.paperAndForestProducts.subIndustries.last!, GICS.SubIndustry.paperProducts)
        GICS.allSectors.forEach {
            XCTAssertGreaterThan($0.subIndustries.endIndex, 1, $0.description)
            XCTAssertNil($0.subIndustry)
        }
        GICS.allIndustryGroups.forEach {
            XCTAssertGreaterThan($0.subIndustries.endIndex, 1, $0.description)
            XCTAssertNil($0.subIndustry)
        }
        GICS.allIndustries.forEach {
            let subIndustry = $0.subIndustry
            if $0.subIndustries.endIndex == 1 {
                XCTAssertNotNil(subIndustry)
            } else {
                XCTAssertNil(subIndustry)
            }
            switch $0 {
            case .aerospaceAndDefense:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.aerospaceAndDefense)
            case .airFreightAndLogistics:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.airFreightAndLogistics)
            case .biotechnology:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.biotechnology)
            case .broadlineRetail:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.broadlineRetail)
            case .buildingProducts:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.buildingProducts)
            case .communicationsEquipment:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.communicationsEquipment)
            case .constructionAndEngineering:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.constructionAndEngineering)
            case .constructionMaterials:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.constructionMaterials)
            case .consumerFinance:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.consumerFinance)
            case .distributors:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.distributors)
            case .diversifiedREITs:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.diversifiedREITs)
            case .electricUtilities:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.electricUtilities)
            case .gasUtilities:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.gasUtilities)
            case .healthCareREITs:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.healthCareREITs)
            case .healthCareTechnology:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.healthCareTechnology)
            case .hotelAndResortREITs:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.hotelAndResortREITs)
            case .householdProducts:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.householdProducts)
            case .industrialConglomerates:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.industrialConglomerates)
            case .industrialREITs:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.industrialREITs)
            case .interactiveMediaAndServices:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.interactiveMediaAndServices)
            case .leisureProducts:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.leisureProducts)
            case .lifeSciencesToolsAndServices:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.lifeSciencesToolsAndServices)
            case .marineTransportation:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.marineTransportation)
            case .mortgageREITs:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.mortgageREITs)
            case .multiUtilities:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.multiUtilities)
            case .officeREITs:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.officeREITs)
            case .passengerAirlines:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.passengerAirlines)
            case .personalCareProducts:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.personalCareProducts)
            case .pharmaceuticals:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.pharmaceuticals)
            case .retailREITs:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.retailREITs)
            case .technologyHardwareStorageAndPeripherals:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.technologyHardwareStorageAndPeripherals)
            case .tobacco:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.tobacco)
            case .tradingCompaniesAndDistributors:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.tradingCompaniesAndDistributors)
            case .waterUtilities:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.waterUtilities)
            case .wirelessTelecommunicationServices:
                XCTAssertEqual(subIndustry, GICS.SubIndustry.wirelessTelecommunicationServices)
            default:
                XCTAssertNil(subIndustry)
            }
        }
    }
    
}
