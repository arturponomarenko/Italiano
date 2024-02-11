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
    var body: some View {
        List {
            TextField("Enter name", text: $topic.name)
            ForEach(Array(topic.languagePairs.enumerated()), id: \.offset) { index, pair in
                VStack(alignment: .leading) {
                    HStack {
                        Text(pair.native.language.flag)
                        TextField(
                            "Original",
                            text: .init(
                                get: {
                                    pair.native.text
                                },
                                set: {
                                    topic.languagePairs[index].native.text = $0
                                }
                            )
                        )
                    }
                    HStack {
                        Text(pair.learning.language.flag)
                        TextField(
                            "Translation",
                            text: .init(
                                get: {
                                    pair.learning.text
                                },
                                set: {
                                    topic.languagePairs[index].learning.text = $0
                                }
                            )
                        )
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
