import XCTest
@testable import HammingCountTests

XCTMain([
    testCase(NumberToBinaryStringTests.allTests),
    testCase(NormalizingNumbersTests.allTests),
    testCase(HammingCountTests.allTests),
])
