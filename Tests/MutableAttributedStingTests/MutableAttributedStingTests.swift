import XCTest
@testable import MutableAttributedSting

final class MutableAttributedStingTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(MutableAttributedSting().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
