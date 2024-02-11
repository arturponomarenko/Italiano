//
//  ItalianoApp.swift
//  Italiano
//
//  Created by Artur Ponomarenko on 10.02.2024.
//

import SwiftUI
import SwiftData

@main
struct ItalianoApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView()
            }
            .modelContainer(for: LearningTopic.self)
        }
    }
}
