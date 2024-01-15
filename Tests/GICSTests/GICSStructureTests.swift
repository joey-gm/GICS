import XCTest
@testable import GICS

final class GICSStructureTests: XCTestCase {
    
    func testGICSSectorCode() throws {
        GICS.allSectors.forEach {
            XCTAssertGreaterThanOrEqual($0.id, 0)
            XCTAssertLessThan($0.id, 100)
        }
    }
    
    func testGICSIndustryGroupCode() throws {
        let min = GICS.allSectors.first!.id * 100
        var max = (GICS.allSectors.last!.id + 1) * 100
        GICS.allIndustryGroups.reversed().forEach {
            XCTAssertGreaterThanOrEqual($0.id, min)
            XCTAssertLessThan($0.id, max)
        }
        GICS.allSectors.reversed().forEach { sector in
            sector.industryGroups.reversed().forEach {
                XCTAssertGreaterThanOrEqual($0.id, sector.id * 100)
                XCTAssertLessThan($0.id, max)
                max = (sector.id + 1) * 100
            }
        }
    }
    
    func testGICSIndustryCode() throws {
        let min = GICS.allIndustryGroups.first!.id * 100
        var max = (GICS.allIndustryGroups.last!.id + 1) * 100
        GICS.allIndustries.reversed().forEach {
            XCTAssertGreaterThanOrEqual($0.id, min)
            XCTAssertLessThan($0.id, max)
        }
        GICS.allIndustryGroups.reversed().forEach { sector in
            sector.industries.reversed().forEach {
                XCTAssertGreaterThanOrEqual($0.id, sector.id * 100)
                XCTAssertLessThan($0.id, max)
                max = (sector.id + 1) * 100
            }
        }
    }
    
    func testGICSSubIndustryCode() throws {
        let min = GICS.allIndustries.first!.id * 100
        var max = (GICS.allIndustries.last!.id + 1) * 100
        GICS.allSubIndustries.reversed().forEach {
            XCTAssertGreaterThanOrEqual($0.id, min)
            XCTAssertLessThan($0.id, max)
        }
        GICS.allIndustries.reversed().forEach { sector in
            sector.subIndustries.reversed().forEach {
                XCTAssertGreaterThanOrEqual($0.id, sector.id * 100)
                XCTAssertLessThan($0.id, max)
                max = (sector.id + 1) * 100
            }
        }
    }
    
    func testGICSCount() throws {
        // Total Count
        let totalCount = GICS.allSectors.endIndex + GICS.allIndustryGroups.endIndex + GICS.allIndustries.endIndex + GICS.allSubIndustries.endIndex
        XCTAssertEqual(GICS.allCases.endIndex, totalCount)
        // Via Sectors
        XCTAssertEqual(GICS.allSectors.endIndex, 11)
        XCTAssertEqual(GICS.allSectors.flatMap{$0.industryGroups}.endIndex, 25)
        XCTAssertEqual(Set(GICS.allSectors.flatMap{$0.industryGroups}).count, 25)
        XCTAssertEqual(GICS.allSectors.flatMap{$0.industries}.endIndex, 74)
        XCTAssertEqual(Set(GICS.allSectors.flatMap{$0.industries}).count, 74)
        XCTAssertEqual(GICS.allSectors.flatMap{$0.subIndustries}.endIndex, 163)
        XCTAssertEqual(Set(GICS.allSectors.flatMap{$0.subIndustries}).count, 163)
        // Via Industry Groups
        XCTAssertEqual(Set(GICS.allIndustryGroups.map{$0.sector}).count, 11)
        XCTAssertEqual(GICS.allIndustryGroups.endIndex, 25)
        XCTAssertEqual(GICS.allIndustryGroups.flatMap{$0.industries}.endIndex, 74)
        XCTAssertEqual(Set(GICS.allIndustryGroups.flatMap{$0.industries}).count, 74)
        XCTAssertEqual(GICS.allIndustryGroups.flatMap{$0.subIndustries}.endIndex, 163)
        XCTAssertEqual(Set(GICS.allIndustryGroups.flatMap{$0.subIndustries}).count, 163)
        // Via Industries
        XCTAssertEqual(Set(GICS.allIndustries.map{$0.sector}).count, 11)
        XCTAssertEqual(Set(GICS.allIndustries.map{$0.industryGroup}).count, 25)
        XCTAssertEqual(GICS.allIndustries.endIndex, 74)
        XCTAssertEqual(GICS.allIndustries.flatMap{$0.subIndustries}.endIndex, 163)
        XCTAssertEqual(Set(GICS.allIndustries.flatMap{$0.subIndustries}).count, 163)
        // Via Sub-Industries
        XCTAssertEqual(Set(GICS.allSubIndustries.map{$0.sector}).count, 11)
        XCTAssertEqual(Set(GICS.allSubIndustries.map{$0.industryGroup}).count, 25)
        XCTAssertEqual(Set(GICS.allSubIndustries.map{$0.industry}).count, 74)
        XCTAssertEqual(GICS.allSubIndustries.endIndex, 163)
    }
    
    func testIndustryGroupCount() throws {
        XCTAssertEqual(GICS.Sector.energy.industryGroups.endIndex, 1)
        XCTAssertEqual(GICS.Sector.materials.industryGroups.endIndex, 1)
        XCTAssertEqual(GICS.Sector.industrials.industryGroups.endIndex, 3)
        XCTAssertEqual(GICS.Sector.consumerDiscretionary.industryGroups.endIndex, 4)
        XCTAssertEqual(GICS.Sector.consumerStaples.industryGroups.endIndex, 3)
        XCTAssertEqual(GICS.Sector.healthCare.industryGroups.endIndex, 2)
        XCTAssertEqual(GICS.Sector.financials.industryGroups.endIndex, 3)
        XCTAssertEqual(GICS.Sector.informationTechnology.industryGroups.endIndex, 3)
        XCTAssertEqual(GICS.Sector.communicationServices.industryGroups.endIndex, 2)
        XCTAssertEqual(GICS.Sector.utilities.industryGroups.endIndex, 1)
        XCTAssertEqual(GICS.Sector.realEstate.industryGroups.endIndex, 2)
    }
    
    func testIndustryCount() throws {
        XCTAssertEqual(GICS.IndustryGroup.energy.industries.endIndex, 2)
        XCTAssertEqual(GICS.IndustryGroup.materials.industries.endIndex, 5)
        XCTAssertEqual(GICS.IndustryGroup.capitalGoods.industries.endIndex, 7)
        XCTAssertEqual(GICS.IndustryGroup.commercialAndProfessionalServices.industries.endIndex, 2)
        XCTAssertEqual(GICS.IndustryGroup.transportation.industries.endIndex, 5)
        XCTAssertEqual(GICS.IndustryGroup.automobilesAndComponents.industries.endIndex, 2)
        XCTAssertEqual(GICS.IndustryGroup.consumerDurablesAndApparel.industries.endIndex, 3)
        XCTAssertEqual(GICS.IndustryGroup.consumerServices.industries.endIndex, 2)
        XCTAssertEqual(GICS.IndustryGroup.consumerDiscretionaryDistributionAndRetail.industries.endIndex, 3)
        XCTAssertEqual(GICS.IndustryGroup.consumerStaplesDistributionAndRetail.industries.endIndex, 1)
        XCTAssertEqual(GICS.IndustryGroup.foodBeverageAndTobacco.industries.endIndex, 3)
        XCTAssertEqual(GICS.IndustryGroup.householdAndPersonalProducts.industries.endIndex, 2)
        XCTAssertEqual(GICS.IndustryGroup.healthCareEquipmentAndServices.industries.endIndex, 3)
        XCTAssertEqual(GICS.IndustryGroup.pharmaceuticalsBiotechnologyAndLifeSciences.industries.endIndex, 3)
        XCTAssertEqual(GICS.IndustryGroup.banks.industries.endIndex, 1)
        XCTAssertEqual(GICS.IndustryGroup.financialServices.industries.endIndex, 4)
        XCTAssertEqual(GICS.IndustryGroup.insurance.industries.endIndex, 1)
        XCTAssertEqual(GICS.IndustryGroup.softwareAndServices.industries.endIndex, 2)
        XCTAssertEqual(GICS.IndustryGroup.technologyHardwareAndEquipment.industries.endIndex, 3)
        XCTAssertEqual(GICS.IndustryGroup.semiconductorsAndSemiconductorEquipment.industries.endIndex, 1)
        XCTAssertEqual(GICS.IndustryGroup.telecommunicationServices.industries.endIndex, 2)
        XCTAssertEqual(GICS.IndustryGroup.mediaAndEntertainment.industries.endIndex, 3)
        XCTAssertEqual(GICS.IndustryGroup.utilities.industries.endIndex, 5)
        XCTAssertEqual(GICS.IndustryGroup.equityRealEstateInvestmentTrusts.industries.endIndex, 8)
        XCTAssertEqual(GICS.IndustryGroup.realEstateManagementAndDevelopment.industries.endIndex, 1)
    }
    
    func testSubIndustryCount() throws {
        let expectedSubIndustryCountPerIndustry = [2, 5, // energy
                                                   5, 1, 2, 7, 2, // materials
                                                   1, 1, 1, 2, 1, 3, 1, // capitalGoods
                                                   5, 3, // commercialAndProfessionalServices
                                                   1, 1, 1, 3, 3, // transportation
                                                   2, 2, // automobilesAndComponents
                                                   5, 1, 3, // consumerDurablesAndApparel
                                                   4, 2, // consumerServices
                                                   1, 1, 6, // consumerDiscretionaryDistributionAndRetail
                                                   4, // consumerStaplesDistributionAndRetail
                                                   3, 2, 1, // foodBeverageAndTobacco
                                                   1, 1, // householdAndPersonalProducts
                                                   2, 4, 1, // healthCareEquipmentAndServices
                                                   1, 1, 1, // pharmaceuticalsBiotechnologyAndLifeSciences
                                                   2, // banks
                                                   5, 1, 4, 1, // financialServices
                                                   5, // insurance
                                                   2, 2, // softwareAndServices
                                                   1, 1, 4, // technologyHardwareAndEquipment
                                                   2, // semiconductorsAndSemiconductorEquipment
                                                   2, 1, // telecommunicationServices
                                                   4, 2, 1, // mediaAndEntertainment
                                                   1, 1, 1, 1, 2, // utilities
                                                   1, 1, 1, 1, 1, 2, 1, 5, // equityRealEstateInvestmentTrusts
                                                   4] // realEstateManagementAndDevelopment
        for (i, subIndustry) in GICS.allIndustries.enumerated() {
            XCTAssertEqual(subIndustry.subIndustries.endIndex, expectedSubIndustryCountPerIndustry[i], subIndustry.description)
        }
        XCTAssertEqual(expectedSubIndustryCountPerIndustry.reduce(0, +), 163)
    }
    
    func testGICSHierarchy() throws {
        GICS.allCases.forEach {
            switch $0 {
            case .sector:
                XCTAssertTrue($0.isSector)
                XCTAssertFalse($0.isIndustryGroup)
                XCTAssertFalse($0.isIndustry)
                XCTAssertFalse($0.isSubIndustry)
            case .industryGroup:
                XCTAssertFalse($0.isSector)
                XCTAssertTrue($0.isIndustryGroup)
                XCTAssertFalse($0.isIndustry)
                XCTAssertFalse($0.isSubIndustry)
            case .industry:
                XCTAssertFalse($0.isSector)
                XCTAssertFalse($0.isIndustryGroup)
                XCTAssertTrue($0.isIndustry)
                XCTAssertFalse($0.isSubIndustry)
            case .subIndustry:
                XCTAssertFalse($0.isSector)
                XCTAssertFalse($0.isIndustryGroup)
                XCTAssertFalse($0.isIndustry)
                XCTAssertTrue($0.isSubIndustry)
            }
        }
    }
    
    func testContainsAndBelongsTo() throws {
        XCTAssertTrue(GICS.Sector.energy.contains(GICS.IndustryGroup.energy))
        XCTAssertFalse(GICS.IndustryGroup.energy.contains(GICS.Sector.energy))
        XCTAssertFalse(GICS.Sector.energy.belongs(to: GICS.IndustryGroup.energy))
        XCTAssertTrue(GICS.IndustryGroup.energy.belongs(to: GICS.Sector.energy))
        XCTAssertFalse(GICS.SubIndustry.advertising.belongs(to: GICS.Sector.consumerStaples))
        XCTAssertTrue(GICS.industry(.gasUtilities).belongs(to: GICS.IndustryGroup.utilities))
    }
    
    func testEquality() throws {
        XCTAssertEqual(GICS(rawValue: 25), GICS.sector(.consumerDiscretionary))
        XCTAssertEqual(GICS(rawValue: 30), GICS.sector(.consumerStaples))
        XCTAssertNotEqual(GICS(rawValue: 25), GICS.sector(.consumerStaples))
        XCTAssertNotEqual(GICS.sector(.consumerDiscretionary), GICS.sector(.consumerStaples))
        XCTAssertEqual(GICS.Sector(rawValue: 50), GICS.Sector.communicationServices)
    }
    
}
