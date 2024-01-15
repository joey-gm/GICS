import XCTest
@testable import GICS

final class GICSLocalizationTests: XCTestCase {
    
    func testDescription() throws {
        GICS.allCases.forEach {
            let description = $0.description
            XCTAssertNotEqual(description, $0.rawValue.description)
            XCTAssertTrue(description.first!.isUppercase, description)
            XCTAssertFalse(description.last!.isWhitespace, description)
        }
        XCTAssertEqual(GICS.Sector.healthCare.description, "Health Care")
        XCTAssertEqual(GICS.IndustryGroup.householdAndPersonalProducts.description, "Household & Personal Products")
        XCTAssertEqual(GICS.Industry.mortgageREITs.description, "Mortgage Real Estate Investment Trusts (REITs)")
        XCTAssertEqual(GICS.SubIndustry.homeFurnishings.description, "Home Furnishings")
    }
    
    func testDefinition() throws {
        GICS.allCases.forEach {
            switch $0 {
            case .sector, .subIndustry:
                let definition = $0.definition
                XCTAssertNotEqual(definition, $0.rawValue.description)
                XCTAssertTrue(definition.first!.isUppercase, definition)
                XCTAssertEqual(definition.last!, ".", definition)
                XCTAssertFalse(definition.last!.isWhitespace, definition)
            default:
                XCTAssertEqual($0.definition, $0.description)
            }
        }
        XCTAssertEqual(GICS.Sector.industrials.definition, "The Industrials Sector includes manufacturers and distributors of capital goods such as aerospace & defense, building products, electrical equipment and machinery and companies that offer construction & engineering services. It also includes providers of commercial & professional services including printing, environmental and facilities services, office services & supplies, security & alarm services, human resource & employment services, research & consulting services. It also includes companies that provide transportation services.")
        XCTAssertEqual(GICS(rawValue: 50)?.definition, "The Communication Services Sector includes companies that facilitate communication and offer related content and information through various mediums. It includes telecom and media & entertainment companies including producers of interactive gaming products and companies engaged in content and information creation or distribution through proprietary platforms.")
        XCTAssertEqual(GICS.SubIndustry.investmentBankingAndBrokerage.definition, "Financial institutions primarily engaged in investment banking & brokerage services, including equity and debt underwriting, mergers and acquisitions, securities lending and advisory services. Excludes banks and other financial institutions primarily involved in commercial lending, asset management and specialized financial activities.")
    }
    
    func testSubIndustryDefinition() throws {
        GICS.allSubIndustries.forEach {
            let definition = $0.definition
            XCTAssertNotEqual(definition, $0.rawValue.description)
            XCTAssertTrue(definition.first!.isUppercase, definition)
            XCTAssertEqual(definition.last!, ".", definition)
            XCTAssertFalse(definition.last!.isWhitespace, definition)
        }
        
    }
    
}
