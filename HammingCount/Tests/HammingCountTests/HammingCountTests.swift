import XCTest
@testable import HammingCount

let fourInBinary = "100"
let oneInBinary = "1"

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

        XCTAssertEqual("001", normalized.leftBinaryNumber)
    }

    func testShouldNormalizeRightNumberToSameSizeOfLeftNumber() {
        let normalized = NormalizeBinaryNumbers.normalize(leftBinaryNumber: fourInBinary, rightBinaryNumber: oneInBinary)

        XCTAssertEqual("001", normalized.rightBinaryNumber)
    }

    static var allTests = [
        ("testShouldNormalizeLeftNumberToSameSizeOfRightNumber", testShouldNormalizeLeftNumberToSameSizeOfRightNumber),
        ("testShouldNormalizeRightNumberToSameSizeOfLeftNumber", testShouldNormalizeRightNumberToSameSizeOfLeftNumber),
    ]

}

class HammingCountTests: XCTestCase {

    func testShouldCountBetweenLeftAndRightBinaryNumber() {
        let normalized = NormalizeBinaryNumbers.normalize(leftBinaryNumber: oneInBinary, rightBinaryNumber: fourInBinary)

        let count = HammingCount.count(normalized.leftBinaryNumber, normalized.rightBinaryNumber)

        XCTAssertEqual(2, count)
    }

    static var allTests = [
        ("testShouldCountBetweenLeftAndRightBinaryNumber", testShouldCountBetweenLeftAndRightBinaryNumber),
    ]

}