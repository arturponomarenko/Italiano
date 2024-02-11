//
//  TopicsList.swift
//  Italiano
//
//  Created by Artur Ponomarenko on 11.02.2024.
//

import SwiftUI
import SwiftData

struct TopicsList: View {
  
  @Environment(\.modelContext) private var context
  @Query var topics: [LearningTopic]
  @State var isAddTopicPresented: Bool = false
  
  var body: some View {
    NavigationStack {
      List {
        ForEach(topics) { topic in
          NavigationLink(
            destination: {
              TopicDetailsView(topic: topic)
            },
            label: {
              HStack {
                Toggle(
                  isOn: .init(
                    get: { topic.isEnabled }, 
                    set: { topic.isEnabled = $0 }
                  ),
                  label: {
                    Text(topic.name)
                  }
                )
              }
            }
          )
        }
        .onDelete(perform: deleteItems)
      }
      .navigationTitle("Topics")
      .navigationBarTitleDisplayMode(.large)
      .toolbar {
        ToolbarItem {
          Button(action: addItem) {
            Label("Add Item", systemImage: "plus")
          }
        }
      }
    }
    .sheet(isPresented: $isAddTopicPresented) {
      AddTopicView()
    }
//    .onAppear {
//      TopicsContainer.data.forEach { topic in
//        context.insert(
//          LearningTopic(
//            name: topic.topic,
//            languagePairs: topic.1.map {
//              LanguagePair(
//                learning: LanguageItem(language: .italian, text: $0.it),
//                native: LanguageItem(language: .ukrainian, text: $0.uk)
//              )
//            }
//          )
//        )
//      }
//    }
  }
  
  func addItem() {
    isAddTopicPresented = true
  }
  
  private func deleteItems(offsets: IndexSet) {
    withAnimation {
      for index in offsets {
        context.delete(topics[index])
      }
    }
  }
}

#Preview {
  TopicsList()
}
