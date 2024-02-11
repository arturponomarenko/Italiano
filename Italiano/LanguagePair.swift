struct LanguagePair: Codable, Hashable {
    let learning: LanguageItem
    let native: LanguageItem
}

struct LanguageItem: Codable, Hashable {
    let language: Language
    let text: String
}
