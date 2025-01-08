//
//  OnboardingView.swift
//  Fructus
//
//  Created by k21047kk on 2025/01/08.
//

import SwiftUI

struct OnboardingView: View {
  // MARK: - PROPERTIES
  let fruits: [Fruit] = fruitsData
  
  // MARK: - BODY

    var body: some View {
      TabView {
        ForEach(fruits) { fruit in
          FruitCardView(fruit: fruit)
          
        } //: LOOP
      } //: TAB
      .tabViewStyle(PageTabViewStyle())
      .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW
#Preview {
    OnboardingView()
}
