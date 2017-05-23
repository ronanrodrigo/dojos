import XCTest
@testable import HammingCount

let fourInBinary = "100"
let oneInBinary = "1"
let oneInBinaryNormalized = "001"

class NumberToBinaryStringTests: XCTestCase {

    func testShouldCastNumberOneToBinaryString() {
        XCTAssertEqual(1.toBinary(), oneInBinary)
    }

    func testShouldCastNumberFourToBinaryString() {
        XCTAssertEqual(4.toBinary(), fourInBinary)
    }

    static var allTests = [
        ("testShouldCastNumberOneToBinaryString", testShouldCastNumberOneToBinaryString),
        ("testShouldCastNumberFourToBinaryString", testShouldCastNumberFourToBinaryString),
    ]
}

class NormalizingNumbersTests: XCTestCase {

    func testShouldNormalizeLeftNumberToSameSizeOfRightNumber() {
        let normalized = NormalizeBinaryNumbers.normalize(leftBinaryNumber: oneInBinary, rightBinaryNumber: fourInBinary)

        XCTAssertEqual(oneInBinaryNormalized, normalized.leftBinaryNumber)
    }

    func testShouldNormalizeRightNumberToSameSizeOfLeftNumber() {
        let normalized = NormalizeBinaryNumbers.normalize(leftBinaryNumber: fourInBinary, rightBinaryNumber: oneInBinary)

        XCTAssertEqual(oneInBinaryNormalized, normalized.rightBinaryNumber)
    }

    func testShouldNotNormalizeNumbersWithsameSize() {
        let normalized = NormalizeBinaryNumbers.normalize(leftBinaryNumber: fourInBinary, rightBinaryNumber: oneInBinaryNormalized)

        XCTAssertEqual(fourInBinary, normalized.leftBinaryNumber)
        XCTAssertEqual(oneInBinaryNormalized, normalized.rightBinaryNumber)
    }

    static var allTests = [
        ("testShouldNormalizeLeftNumberToSameSizeOfRightNumber", testShouldNormalizeLeftNumberToSameSizeOfRightNumber),
        ("testShouldNormalizeRightNumberToSameSizeOfLeftNumber", testShouldNormalizeRightNumberToSameSizeOfLeftNumber),
    ]

}

class HammingCountTests: XCTestCase {

    func testShouldCountBetweenLeftAndRightBinaryNumber() {
        let count = HammingCount.count(1, 4)

        XCTAssertEqual(2, count)
    }

    static var allTests = [
        ("testShouldCountBetweenLeftAndRightBinaryNumber", testShouldCountBetweenLeftAndRightBinaryNumber),
    ]

}
