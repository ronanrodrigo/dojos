extension String {

    func string(at index: Int) -> String {
        return self.characters.reduce([], { (result, char) -> [String] in
            return result + [String(char)]
        })[index]
    }

}
