//
//  ContentView.swift
//  Fructus
//
//  Created by k21047kk on 2025/01/08.
//

import SwiftUI

struct ContentView: View {
  // MARK: - PROPERTIES
  let fruits: [Fruit] = fruitsData
  
    var body: some View {
      NavigationView {
        List {
          ForEach(fruits.shuffled()) { fruit in
            FruitRowView(fruit: fruit)
              .padding(.vertical, 4)
          }
        }
        .navigationTitle("Fruits")
      }
    }
}

#Preview {
    ContentView()
}
