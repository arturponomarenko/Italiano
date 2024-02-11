//
//  LearningTopic.swift
//  Italiano
//
//  Created by Artur Ponomarenko on 11.02.2024.
//

import SwiftData

@Model
class LearningTopic {
    var name: String
    var languagePairs: [LanguagePair]
    var isEnabled: Bool
    
    init(name: String, languagePairs: [LanguagePair] = [], isEnabled: Bool = true) {
        self.name = name
        self.languagePairs = languagePairs
        self.isEnabled = isEnabled
    }
}
