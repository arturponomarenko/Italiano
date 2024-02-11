//
//  AddTopic.swift
//  Italiano
//
//  Created by Artur Ponomarenko on 11.02.2024.
//

import SwiftUI

struct AddTopicView: View {
  
  @Environment(\.modelContext) private var context
  @Environment(\.dismiss) var dismiss
  @State var name: String = "" {
    didSet {
      isAddButtonEnabled = name != ""
    }
  }
  @State var isAddButtonEnabled = false
  @FocusState var isTextFieldFocused
  
  var body: some View {
    NavigationStack {
      List {
        TextField("Enter name", text: $name)
          .focused($isTextFieldFocused)
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
        isTextFieldFocused = true
      }
    }
  }
  
  func cancel() {
    dismiss()
  }
  
  func addItem() {
    let topic = LearningTopic(name: name.trimmingCharacters(in: .whitespacesAndNewlines))
    context.insert(topic)
    dismiss()
  }
}

#Preview {
  AddTopicView()
}
