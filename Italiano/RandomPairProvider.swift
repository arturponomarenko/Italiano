//
//  RandomPairProvider.swift
//  Italiano
//
//  Created by Artur Ponomarenko on 11.02.2024.
//

import SwiftUI
import SwiftData

@MainActor
final class RandomPairProvider: ObservableObject {
    let context: ModelContext
    static let placeholder = LanguagePair(learning: LanguageItem(language: .italian, text: "io"), native: LanguageItem(language: .ukrainian, text: "я"))
    
    init() {
        let container = try! ModelContainer(for: LearningTopic.self)
        context = container.mainContext
    }
    
    func random() -> LanguagePair {
        let fetchDescriptor = FetchDescriptor<LearningTopic>(
            predicate: #Predicate<LearningTopic> { topic in
                topic.isEnabled == true
            }
        )
        do {
            let topics = try context.fetch(fetchDescriptor)
            let learningPairs = topics.flatMap { $0.languagePairs }
            return learningPairs.randomElement() ?? Self.placeholder
        } catch {
            print("Failed to load LeadrningTopic model.")
            return Self.placeholder
        }
    }
}
