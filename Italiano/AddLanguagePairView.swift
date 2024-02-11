//
//  AddLanguagePairView.swift
//  Italiano
//
//  Created by Artur Ponomarenko on 11.02.2024.
//

import SwiftUI

struct AddLanguagePairView: View {
  
  enum FocusableField: Hashable {
    case original, translation
  }
  
  @Environment(\.modelContext) private var context
  @Environment(\.dismiss) var dismiss
  let topic: LearningTopic
  @State var pair: LanguagePair = LanguagePair(
    learning: LanguageItem(language: .italian, text: ""),
    native: LanguageItem(language: .ukrainian, text: "")
  ) {
    didSet {
      isAddButtonEnabled = !pair.native.text.isEmpty && !pair.learning.text.isEmpty
    }
  }
  @State var isAddButtonEnabled: Bool = false
  @FocusState private var focusedField: FocusableField?
  
  var body: some View {
    NavigationStack {
      List {
        HStack {
          Text(pair.native.language.flag)
          TextField("Enter original", text: $pair.native.text)
            .focused($focusedField, equals: .original)
            .onSubmit {
              focusedField = .translation
            }
        }
        HStack {
          Text(pair.learning.language.flag)
          TextField("Enter translation", text: $pair.learning.text)
            .focused($focusedField, equals: .translation)
        }
      }
      .toolbar {
        ToolbarItem(placement: .topBarLeading) {
          Button(action: cancel) {
            Text("Cancel")
          }
        }
        ToolbarItem(placement: .topBarTrailing) {
          Button(action: addItem) {
            Text("Add")
          }
          .disabled(isAddButtonEnabled)
        }
      }
      .navigationTitle("Add topic")
      .navigationBarTitleDisplayMode(.large)
      .onAppear {
        focusedField = .original
      }
    }
  }
  
  init(
    topic: LearningTopic,
    originalLanguage: Language,
    translationLanguage: Language
  ) {
    self.topic = topic
    self.pair = LanguagePair(
      learning: LanguageItem(language: translationLanguage, text: ""),
      native: LanguageItem(language: originalLanguage, text: "")
    )
  }
  
  func cancel() {
    dismiss()
  }
  
  func addItem() {
    topic.languagePairs.append(pair)
    dismiss()
  }
}

#Preview {
  AddLanguagePairView(
    topic: LearningTopic(
      name: "Topic 0",
      languagePairs: [RandomPairProvider.placeholder]
    ),
    originalLanguage: .ukrainian,
    translationLanguage: .italian
  )
}
