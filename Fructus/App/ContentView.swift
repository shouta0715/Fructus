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
  
  @Binding var isShowingSettings: Bool
  
    var body: some View {
      NavigationStack {
        List {
          ForEach(fruits.shuffled()) { fruit in
            NavigationLink(destination:FruitDetailView(fruit: fruit)) {
              FruitRowView(fruit: fruit)
                .padding(.vertical, 4)
            }
          }
        }
        .navigationTitle("Fruits")
        .toolbar {
          Button {
            isShowingSettings = true
          } label: {
            Image(systemName: "slider.horizontal.3")
          } //: Button
        } //: TOOLBAR
      }
    }
}

#Preview {
  ContentView(isShowingSettings: .constant(false))
}
