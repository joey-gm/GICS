import XCTest
@testable import GICS

final class GICSInitializationTests: XCTestCase {
    
    func testGICSInitializations() throws {
        XCTAssertNotNil(GICS(rawValue: 30))
        XCTAssertNotNil(GICS(rawValue: 2530))
        XCTAssertNotNil(GICS(rawValue: 551030))
        XCTAssertNotNil(GICS(rawValue: 15104030))
        XCTAssertNil(GICS(rawValue: 31))
        XCTAssertNil(GICS(rawValue: 2531))
        XCTAssertNil(GICS(rawValue: 551031))
        XCTAssertNil(GICS(rawValue: 15104031))
        // GICS Sector Code
        XCTAssertNotNil(GICS.Sector(rawValue: 30))
        XCTAssertNil(GICS.IndustryGroup(rawValue: 30))
        XCTAssertNil(GICS.Industry(rawValue: 30))
        XCTAssertNil(GICS.SubIndustry(rawValue: 30))
        XCTAssertNil(GICS.Sector(rawValue: 31))
        XCTAssertNil(GICS.IndustryGroup(rawValue: 31))
        XCTAssertNil(GICS.Industry(rawValue: 31))
        XCTAssertNil(GICS.SubIndustry(rawValue: 31))
        // GICS Industry Group Code
        XCTAssertNil(GICS.Sector(rawValue: 2530))
        XCTAssertNotNil(GICS.IndustryGroup(rawValue: 2530))
        XCTAssertNil(GICS.Industry(rawValue: 2530))
        XCTAssertNil(GICS.SubIndustry(rawValue: 2530))
        XCTAssertNil(GICS.Sector(rawValue: 2531))
        XCTAssertNil(GICS.IndustryGroup(rawValue: 2531))
        XCTAssertNil(GICS.Industry(rawValue: 2531))
        XCTAssertNil(GICS.SubIndustry(rawValue: 2531))
        // GICS Industry Code
        XCTAssertNil(GICS.Sector(rawValue: 551030))
        XCTAssertNil(GICS.IndustryGroup(rawValue: 551030))
        XCTAssertNotNil(GICS.Industry(rawValue: 551030))
        XCTAssertNil(GICS.SubIndustry(rawValue: 551030))
        XCTAssertNil(GICS.Sector(rawValue: 551031))
        XCTAssertNil(GICS.IndustryGroup(rawValue: 551031))
        XCTAssertNil(GICS.Industry(rawValue: 551031))
        XCTAssertNil(GICS.SubIndustry(rawValue: 551031))
        // GICS Sub-Industry Code
        XCTAssertNil(GICS.Sector(rawValue: 15104030))
        XCTAssertNil(GICS.IndustryGroup(rawValue: 15104030))
        XCTAssertNil(GICS.Industry(rawValue: 15104030))
        XCTAssertNotNil(GICS.SubIndustry(rawValue: 15104030))
        XCTAssertNil(GICS.Sector(rawValue: 15104031))
        XCTAssertNil(GICS.IndustryGroup(rawValue: 15104031))
        XCTAssertNil(GICS.Industry(rawValue: 15104031))
        XCTAssertNil(GICS.SubIndustry(rawValue: 15104031))
    }
    
    func testAllKnownGICSInitializations() throws {
        GICS.allCases.forEach {
            let gicsCode = $0.id
            XCTAssertNotNil(GICS(rawValue: gicsCode))
            switch $0 {
            case .sector:
                XCTAssertNotNil(GICS.Sector(rawValue: gicsCode))
                XCTAssertNil(GICS.IndustryGroup(rawValue: gicsCode))
                XCTAssertNil(GICS.Industry(rawValue: gicsCode))
                XCTAssertNil(GICS.SubIndustry(rawValue: gicsCode))
            case .industryGroup:
                XCTAssertNil(GICS.Sector(rawValue: gicsCode))
                XCTAssertNotNil(GICS.IndustryGroup(rawValue: gicsCode))
                XCTAssertNil(GICS.Industry(rawValue: gicsCode))
                XCTAssertNil(GICS.SubIndustry(rawValue: gicsCode))
            case .industry:
                XCTAssertNil(GICS.Sector(rawValue: gicsCode))
                XCTAssertNil(GICS.IndustryGroup(rawValue: gicsCode))
                XCTAssertNotNil(GICS.Industry(rawValue: gicsCode))
                XCTAssertNil(GICS.SubIndustry(rawValue: gicsCode))
            case .subIndustry:
                XCTAssertNil(GICS.Sector(rawValue: gicsCode))
                XCTAssertNil(GICS.IndustryGroup(rawValue: gicsCode))
                XCTAssertNil(GICS.Industry(rawValue: gicsCode))
                XCTAssertNotNil(GICS.SubIndustry(rawValue: gicsCode))
            }
            let invalidCode1 = $0.id + 1
            XCTAssertNil(GICS(rawValue: invalidCode1))
            XCTAssertNil(GICS.Sector(rawValue: invalidCode1))
            XCTAssertNil(GICS.IndustryGroup(rawValue: invalidCode1))
            XCTAssertNil(GICS.Industry(rawValue: invalidCode1))
            XCTAssertNil(GICS.SubIndustry(rawValue: invalidCode1))
            let invalidCode2 = $0.id - 2
            XCTAssertNil(GICS(rawValue: invalidCode2))
            XCTAssertNil(GICS.Sector(rawValue: invalidCode2))
            XCTAssertNil(GICS.IndustryGroup(rawValue: invalidCode2))
            XCTAssertNil(GICS.Industry(rawValue: invalidCode2))
            XCTAssertNil(GICS.SubIndustry(rawValue: invalidCode2))
        }
    }
    
}
