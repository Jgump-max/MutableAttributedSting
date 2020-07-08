import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(MutableAttributedStingTests.allTests),
    ]
}
#endif
