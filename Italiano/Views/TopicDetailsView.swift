//
//  TopicDetailsView.swift
//  Italiano
//
//  Created by Artur Ponomarenko on 11.02.2024.
//

import SwiftUI
import SwiftData

struct TopicDetailsView: View {
  
  @Environment(\.dismiss) var dismiss
  @State var topic: LearningTopic
  @State var isAddLanguagePairPresented: Bool = false
  @State var isEnterItemsPresented: Bool = false
  
  var body: some View {
    List {
      TextField("Enter name", text: $topic.name)
      ForEach(Array(topic.languagePairs.enumerated()), id: \.offset) { 
        index, pair in
        VStack(alignment: .leading) {
          HStack {
            Text(pair.native.language.flag)
            TextField(
              "Original",
              text: .init(
                get: { pair.native.text },
                set: { topic.languagePairs[index].native.text = $0 }
              )
            )
          }
          HStack {
            Text(pair.learning.language.flag)
            TextField(
              "Translation",
              text: .init(
                get: { pair.learning.text },
                set: { topic.languagePairs[index].learning.text = $0 }
              )
            )
          }
        }
      }
      .onDelete(perform: deleteItems)
    }
    .toolbar {
      ToolbarItem(placement: .topBarTrailing) {
        HStack {
          Button(action: addItem) {
            Label("Add Item", systemImage: "plus")
          }
          Button(action: enterItems) {
            Text("Enter")
          }
        }
      }
    }
    .navigationTitle(topic.name)
    .navigationBarTitleDisplayMode(.large)
    .sheet(isPresented: $isAddLanguagePairPresented) {
      AddLanguagePairView(
        topic: topic,
        originalLanguage: .ukrainian,
        translationLanguage: .italian
      )
    }
    .sheet(isPresented: $isEnterItemsPresented) {
      EnterLanguagePairsView(topic: topic)
    }
  }
  
  func addItem() {
    isAddLanguagePairPresented = true
  }
  
  func enterItems() {
    isEnterItemsPresented = true
  }
  
  private func deleteItems(offsets: IndexSet) {
    withAnimation {
      for offset in offsets {
        topic.languagePairs.remove(at: offset)
      }
    }
  }
}

#Preview {
  TopicDetailsView(
    topic: LearningTopic(
      name: "Topic 0",
      languagePairs: [RandomPairProvider.placeholder]
    )
  )
}
