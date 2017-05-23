// All contet from Sources are copied here:

// struct HammingCountX {

//     static func count(_ leftNumber: Int, _ rightNumber: Int) -> Int {
//         let normalizedNumbers = NormalizeBinaryNumbers.normalize(
//             leftBinaryNumber: leftNumber.toBinary(),
//             rightBinaryNumber: rightNumber.toBinary())
//         let leftBinaryNumber = normalizedNumbers.leftBinaryNumber
//         let rightBinaryNumber = normalizedNumbers.rightBinaryNumber

//         var counted = 0
//         for index in 0..<leftBinaryNumber.characters.count {
//             if leftBinaryNumber.string(at: index) != rightBinaryNumber.string(at: index) {
//                 counted += 1
//             }
//         }

//         return counted
//     }

// }

// struct NormalizeBinaryNumbers {

//     static func normalize(leftBinaryNumber: String, rightBinaryNumber: String) -> (leftBinaryNumber: String, rightBinaryNumber: String) {
//         let diff = abs(rightBinaryNumber.characters.count - leftBinaryNumber.characters.count)
//         let zerosAtLeft = (0..<diff).map({ _ in "0" }).joined()

//         if leftBinaryNumber.characters.count < rightBinaryNumber.characters.count {
//             return (leftBinaryNumber: "\(zerosAtLeft)\(leftBinaryNumber)", rightBinaryNumber: rightBinaryNumber)
//         } else if leftBinaryNumber.characters.count > rightBinaryNumber.characters.count {
//             return (leftBinaryNumber: leftBinaryNumber, rightBinaryNumber: "\(zerosAtLeft)\(rightBinaryNumber)")
//         }

//         return (leftBinaryNumber: leftBinaryNumber, rightBinaryNumber: rightBinaryNumber)
//     }

// }

// extension Int {

//     func toBinary() -> String {
//         return String(self, radix: 2)
//     }

// }

// extension String {

//     func string(at index: Int) -> String {
//         return self.characters.reduce([], { (result, char) -> [String] in
//             return result + [String(char)]
//         })[index]
//     }

// }
