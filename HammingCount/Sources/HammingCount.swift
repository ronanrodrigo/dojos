struct HammingCount {

    static func count(_ leftNumber: Int, _ rightNumber: Int) -> Int {
        let normalizedNumbers = NormalizeBinaryNumbers.normalize(
            leftBinaryNumber: leftNumber.toBinary(),
            rightBinaryNumber: rightNumber.toBinary())
        let leftBinaryNumber = normalizedNumbers.leftBinaryNumber
        let rightBinaryNumber = normalizedNumbers.rightBinaryNumber

        var counted = 0
        for index in 0..<leftBinaryNumber.characters.count {
            if leftBinaryNumber.string(at: index) != rightBinaryNumber.string(at: index) {
                counted += 1
            }
        }

        return counted
    }

}
