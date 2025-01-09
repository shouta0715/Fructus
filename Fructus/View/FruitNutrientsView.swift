//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by k21047kk on 2025/01/09.
//

import SwiftUI

struct FruitNutrientsView: View {
  // MARK: - PROPERTIES
  let fruit: Fruit
  
  let nutrients: [String] = [
    "Energy",
    "Sugar",
    "Fat",
    "Protein",
    "Vitamins",
    "Minerals"
  ]
  
  // MARK: - BODY
    var body: some View {
      GroupBox() {
        DisclosureGroup("Nutritinal value per 100g") {
          ForEach(0..<nutrients.count, id: \.self) { item in
            
            Divider().padding(.vertical, 2)
            
            HStack {
              Group {
                Image(systemName: "info.circle")
                Text(nutrients[item])
              }
              .foregroundStyle(fruit.gradientColors[1])
              .font(.body)
              .fontWeight(.bold)
              
              Spacer(minLength: 25)
              
              Text(fruit.nutrition[item])
                .multilineTextAlignment(.trailing)
            }
          }
        }
      } //: Box
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 480)) {
  FruitNutrientsView(fruit: fruitsData[0])
    .padding()
}
