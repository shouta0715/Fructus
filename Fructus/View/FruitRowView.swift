//
//  FruitRowView.swift
//  Fructus
//
//  Created by k21047kk on 2025/01/08.
//

import SwiftUI

struct FruitRowView: View {
  // MARK: - PROPERTIES
  
  let fruit: Fruit

  // MARK: - BODY
    var body: some View {
      HStack {
        Image(fruit.image)
          .resizable()
          .scaledToFit()
          .frame(width: 80, height: 80,alignment: .center)
          .shadow(color: .black.opacity(0.3), radius: 3,x: 2,y: 2)
          .background(
            LinearGradient(
              colors: fruit.gradientColors,
              startPoint: .top,
              endPoint: .bottom
            )
          )
          .cornerRadius(8)
        
        VStack(alignment: .leading, spacing: 5) {
          Text(fruit.title)
            .font(.title2)
            .fontWeight(.bold)
            
          
          Text(fruit.headline)
            .font(.caption)
            .foregroundStyle(.secondary)
        }
      } //: HStack
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    FruitRowView(fruit: fruitsData[0])
    .padding()
}
