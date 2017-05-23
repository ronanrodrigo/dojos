extension String {

    func string(at index: Int) -> String {
        return String(Array(self.characters)[index])
    }

}
