struct LanguagePair: Codable, Hashable {
    var learning: LanguageItem
    var native: LanguageItem
}

/// The wrapper of `LanguagePair`
/// It's needed to have a list of `LanguagePair` items in `SwiftUI` `ForEach`
/// I tried to make `LanguagePair` `Identifiable` itself but XCode produces errors in unrelated files.
class LanguagePairIdentifiableWrapper: Identifiable {
    private var pair: LanguagePair
    var learning: LanguageItem {
        get {
            pair.learning
        }
        set {
            pair.learning = newValue
        }
    }
    var native: LanguageItem {
        get {
            pair.native
        }
        set {
            pair.native = newValue
        }
    }
    
    init(pair: LanguagePair) {
        self.pair = pair
    }
}

extension LanguagePair {
    var wrapper: LanguagePairIdentifiableWrapper {
        LanguagePairIdentifiableWrapper(pair: self)
    }
}
