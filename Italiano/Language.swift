//
//  Language.swift
//  Italiano
//
//  Created by Artur Ponomarenko on 10.02.2024.
//

import Foundation

enum Language {
    case italian, ukrainian
    
    mutating func toggle() {
        switch self {
        case .italian:
            self = .ukrainian
        case .ukrainian:
            self = .italian
        }
    }
}
