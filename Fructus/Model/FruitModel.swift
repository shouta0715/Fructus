//
//  FruitModel.swift
//  Fructus
//
//  Created by k21047kk on 2025/01/08.
//

import SwiftUI

// MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable {
  var id = UUID()
  var title: String
  var headline: String
  var image: ImageResource
  var gradientColors: [Color]
  var description: String
  var nutrition: [String]
}
    
    
