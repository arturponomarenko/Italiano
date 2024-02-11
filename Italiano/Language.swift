//
//  Language.swift
//  Italiano
//
//  Created by Artur Ponomarenko on 10.02.2024.
//

import Foundation

enum Language: Codable, Hashable {
  case italian, ukrainian
  
  mutating func toggle() {
    switch self {
    case .italian:
      self = .ukrainian
    case .ukrainian:
      self = .italian
    }
  }
  
  var flag: String {
    switch self {
    case .italian:
      "🇮🇹"
    case .ukrainian:
      "🇺🇦"
    }
  }
}
