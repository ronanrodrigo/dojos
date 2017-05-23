struct HammingCount {

    static func count(_ leftBinaryNumber: String, _ rightBinaryNumber: String) -> Int {
        var counted = 0
        for index in 0..<leftBinaryNumber.characters.count {
            if leftBinaryNumber.string(at: index) != rightBinaryNumber.string(at: index) {
                counted += 1
            }
        }
        return counted
    }

}

struct NormalizeBinaryNumbers {

    static func normalize(leftBinaryNumber: String, rightBinaryNumber: String) -> (leftBinaryNumber: String, rightBinaryNumber: String) {
        var leftBinaryNumberCopied = leftBinaryNumber
        var rightBinaryNumberCopied = rightBinaryNumber

        if leftBinaryNumber.characters.count < rightBinaryNumber.characters.count {
            let diff = rightBinaryNumber.characters.count - leftBinaryNumber.characters.count
            for _ in 0..<diff {
                leftBinaryNumberCopied = "0\(leftBinaryNumberCopied)"
            }
        } else if leftBinaryNumber.characters.count > rightBinaryNumber.characters.count {
            let diff = leftBinaryNumber.characters.count - rightBinaryNumber.characters.count
            for _ in 0..<diff {
                rightBinaryNumberCopied = "0\(rightBinaryNumberCopied)"
            }
        }

        return (leftBinaryNumber: leftBinaryNumberCopied, rightBinaryNumber: rightBinaryNumberCopied)
    }

}
