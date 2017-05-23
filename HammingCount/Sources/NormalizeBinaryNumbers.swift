struct NormalizeBinaryNumbers {

    static func normalize(leftBinaryNumber: String, rightBinaryNumber: String) -> (leftBinaryNumber: String, rightBinaryNumber: String) {
        let diff = abs(rightBinaryNumber.characters.count - leftBinaryNumber.characters.count)
        let zerosAtLeft = (0..<diff).map({ _ in "0" }).joined()

        if leftBinaryNumber.characters.count < rightBinaryNumber.characters.count {
            return (leftBinaryNumber: "\(zerosAtLeft)\(leftBinaryNumber)", rightBinaryNumber: rightBinaryNumber)
        } else if leftBinaryNumber.characters.count > rightBinaryNumber.characters.count {
            return (leftBinaryNumber: leftBinaryNumber, rightBinaryNumber: "\(zerosAtLeft)\(rightBinaryNumber)")
        }

        return (leftBinaryNumber: leftBinaryNumber, rightBinaryNumber: rightBinaryNumber)
    }

}
