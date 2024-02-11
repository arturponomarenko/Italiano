//
//  ContentView.swift
//  Italiano
//
//  Created by Artur Ponomarenko on 10.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    let dataBase = DataBase()
    let speaker = Speaker()
    
    @State var isSoundEnabled: Bool
    @State var pair: DataBase.LangPair
    @State var exposed: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            Text("🇺🇦 \(pair.ukrainian)")
                .font(.title)
            if exposed {
                Text("🇮🇹 \(pair.italian)")
                    .font(.title)
            }
            Spacer()
            Button(action: {
                speaker.isEnabled = !speaker.isEnabled
                isSoundEnabled = speaker.isEnabled
            }, label: {
                Image(systemName: isSoundEnabled ? "speaker.fill" : "speaker.slash.fill")
                    .font(.title)
                    .foregroundColor(Color(.label))
                    .frame(width: 100, height: 100)
            })
        }
        .background(
            Color(.systemBackground)
                .onTapGesture {
                    exposed = !exposed
                    if exposed {
                        speaker.speech(pair.italian, language: .italian)
                    } else {
                        pair = dataBase.random()
                        speaker.speech(pair.ukrainian, language: .ukrainian)
                    }
                }
        )
        .onAppear {
            speaker.speech(pair.ukrainian, language: .ukrainian)
        }
    }
    
    init() {
        pair = dataBase.random()
        isSoundEnabled = speaker.isEnabled
    }
}

#Preview {
    ContentView()
}
