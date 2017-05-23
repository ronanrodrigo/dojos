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
