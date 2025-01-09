//
//  SettingLabelView.swift
//  Fructus
//
//  Created by k21047kk on 2025/01/09.
//

import SwiftUI

struct SettingLabelView: View {
  // MARK: - PROPERTIES
  let text: String
  let image: String
  
  
  // MARK: - BODY
    var body: some View {
      HStack {
        Text(text.uppercased())
          .fontWeight(.bold)
        
        Spacer()
        
        Image(systemName: image)
      }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
  SettingLabelView(text: "Fructus", image: "info.circle")
    .padding()
}
