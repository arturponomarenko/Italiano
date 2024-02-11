//
//  TopicDetailsView.swift
//  Italiano
//
//  Created by Artur Ponomarenko on 11.02.2024.
//

import SwiftUI

struct TopicDetailsView: View {
    @Environment(\.dismiss) var dismiss
    @State var topic: LearningTopic
    
    var body: some View {
        List {
            TextField("Enter name", text: $topic.name)
            ForEach(topic.languagePairs.map { $0.wrapper }) { pair in
                VStack(alignment: .leading) {
                    HStack {
                        Text(pair.native.language.flag)
                        Text(pair.native.text)
                    }
                    HStack {
                        Text(pair.learning.language.flag)
                        Text(pair.learning.text)
                    }
                }
            }
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button(action: done) {
                    Text("Done")
                }
            }
        }
        .navigationTitle(topic.name)
        .navigationBarTitleDisplayMode(.large)
    }
    
    func done() {
        dismiss()
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
