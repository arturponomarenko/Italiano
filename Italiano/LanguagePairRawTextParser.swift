final class LanguagePairRawTextParser {
  let firstLanguage: Language
  let secondLanguage: Language
  
  init(firstLanguage: Language, secondLanguage: Language) {
    self.firstLanguage = firstLanguage
    self.secondLanguage = secondLanguage
  }
  
  func parse(_ text: String) -> [LanguagePair] {
    let rows = text.split(separator: "\n").map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
    var pairs: [LanguagePair] = []
    for i in stride(from: 0, to: rows.count - 1, by: 2) {
      guard i.isMultiple(of: 2) else { continue }
      pairs.append(
        LanguagePair(
          learning: LanguageItem(language: firstLanguage, text: String(rows[i])),
          native: LanguageItem(language: secondLanguage, text: String(rows[i + 1]))
        )
      )
    }
    return pairs
  }
}
