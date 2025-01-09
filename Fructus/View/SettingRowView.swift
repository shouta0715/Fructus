//
//  SwettingRowView.swift
//  Fructus
//
//  Created by k21047kk on 2025/01/09.
//

import SwiftUI

struct SettingRowView: View {
  
  let name: String
  var content: String? = nil
  var linkLabel: String? = nil
  var linkDestination: String? = nil
  
    var body: some View {
      VStack {
        Divider()
          .padding(.vertical, 4)
        
        LabeledContent {
          if let text = content  {
            Text(text)
              .foregroundStyle(.accent)
          } else if (linkLabel != nil && linkDestination != nil) {
            Link(
              linkLabel!,
              destination: URL(
                string: "https://\(linkDestination!)"
              )!
            )
            Image(systemName: "arrow.up.right.square")
              .foregroundStyle(.pink)
            
          } else {
            EmptyView()
          }
          
        } label: {
          Text(name)
            .foregroundStyle(.gray)
        }
      }
    }
}

#Preview("Link") {
  SettingRowView(
    name: "Website",
    linkLabel: "SwiftUI Masterclass",
    linkDestination: "swiftuimasterclass.com"
  )
  .padding()
}

#Preview("text") {
  SettingRowView(
    name: "Developer",
    content: "John / Jane"
  )
    .padding()
    
        
}
