//
//  ContentView.swift
//  Italiano
//
//  Created by Artur Ponomarenko on 10.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    let speaker = Speaker()
    @EnvironmentObject var randomPairProvider: RandomPairProvider
    @State var isSoundEnabled: Bool
    @State var pair: LanguagePair
    @State var exposed: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            Text("\(pair.native.language.flag) \(pair.native.text)")
                .font(.title)
            if exposed {
                Text("\(pair.learning.language.flag) \(pair.learning.text)")
                    .font(.title)
            }
            Spacer()
            HStack {
                NavigationLink(
                    destination: {
                        TopicsList()
                    },
                    label: {
                        Image(systemName: "gear")
                            .font(.title)
                            .foregroundColor(Color(.label))
                            .frame(width: 100, height: 100)
                    }
                )
                Button(action: {
                    speaker.isEnabled = !speaker.isEnabled
                    isSoundEnabled = speaker.isEnabled
                }, label: {
                    Image(systemName: isSoundEnabled ? "speaker.fill" : "speaker.slash.fill")
                        .frame(width: 100, height: 100)
                })
            }
            .font(.title)
            .foregroundColor(Color(.label))
        }
        .background(
            Color(.systemBackground)
                .onTapGesture {
                    exposed = !exposed
                    if exposed {
                        speaker.speech(pair.learning)
                    } else {
                        pair = randomPairProvider.random()
                        speaker.speech(pair.native)
                    }
                }
        )
        .onAppear {
            speaker.speech(pair.native)
            pair = randomPairProvider.random()
        }
    }
    
    init() {
        pair = RandomPairProvider.placeholder
        isSoundEnabled = speaker.isEnabled
    }
}

#Preview {
    ContentView()
}
