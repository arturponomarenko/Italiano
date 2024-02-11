//
//  EnterLanguagePairsView.swift
//  Italiano
//
//  Created by Artur Ponomarenko on 11.02.2024.
//

import SwiftUI

struct EnterLanguagePairsView: View {
  @Environment(\.dismiss) var dismiss
  @State var text: String = ""
  let topic: LearningTopic
  private let parser = LanguagePairRawTextParser(firstLanguage: .italian, secondLanguage: .ukrainian)
  @FocusState var focused: Bool
  
  var body: some View {
    NavigationStack {
      VStack(alignment: .leading) {
        Group {
          Text("Enter text in format:")
          Text("italian1\nukrainian1\nitalian2\nukrainian2")
            .italic()
        }
          .padding(.horizontal)
        TextField("", text: $text, axis: .vertical)
          .padding()
          .autocorrectionDisabled()
          .textInputAutocapitalization(.never)
          .focused($focused)
        Spacer()
      }
      .navigationBarTitleDisplayMode(.large)
      .navigationTitle("Enter words")
      .toolbar {
        ToolbarItem(placement: .topBarLeading) {
          Button("Cancel") {
            dismiss()
          }
        }
        ToolbarItem(placement: .topBarTrailing) {
          Button("Done") {
            done()
          }
        }
      }
      .onAppear {
        focused = true
      }
    }
  }
  
  func done() {
    let pairs = parser.parse(text.trimmingCharacters(in: .whitespacesAndNewlines))
    topic.languagePairs.append(contentsOf: pairs)
    dismiss()
  }
}

#Preview {
  EnterLanguagePairsView(topic: LearningTopic(name: "Topic 0"))
}
