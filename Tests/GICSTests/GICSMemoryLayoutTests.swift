import XCTest
@testable import GICS

final class GICSMemoryLayoutTests: XCTestCase {
    
    func testMemoryLayout() throws {
        XCTAssertEqual(MemoryLayout<GICS.Code>.size, 4)
        XCTAssertEqual(MemoryLayout<GICS.Code>.stride, 4)
        XCTAssertEqual(MemoryLayout<GICS>.size, 2)
        XCTAssertEqual(MemoryLayout<GICS>.stride, 2)
        XCTAssertEqual(MemoryLayout<GICS.Sector>.size, 1)
        XCTAssertEqual(MemoryLayout<GICS.Sector>.stride, 1)
        XCTAssertEqual(MemoryLayout<GICS.IndustryGroup>.size, 1)
        XCTAssertEqual(MemoryLayout<GICS.IndustryGroup>.stride, 1)
        XCTAssertEqual(MemoryLayout<GICS.Industry>.size, 1)
        XCTAssertEqual(MemoryLayout<GICS.Industry>.stride, 1)
        XCTAssertEqual(MemoryLayout<GICS.SubIndustry>.size, 1)
        XCTAssertEqual(MemoryLayout<GICS.SubIndustry>.stride, 1)
        XCTAssertEqual(MemoryLayout<any GICSRepresentable>.size, 40)
        XCTAssertEqual(MemoryLayout<any GICSRepresentable>.stride, 40)
    }
    
}
