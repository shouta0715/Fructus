//
//  SettingView.swift
//  Fructus
//
//  Created by k21047kk on 2025/01/09.
//

import SwiftUI

struct SettingView: View {
  // MARK: - PROPERTIES
  
  @Environment(\.presentationMode) var presentationMode
  
  // MARK: - BODY
    var body: some View {
      NavigationStack {
        ScrollView(.vertical, showsIndicators: false) {
          VStack(spacing: 20) {
            
            // MARK: - SECTION 1
            GroupBox(
              label: SettingLabelView(text: "Fructus", image: "info.circle")
            ) {
              Divider()
                .padding(.vertical, 4)
              
              HStack(alignment: .center, spacing: 10) {
                
                Image(.logo)
                  .resizable()
                  .scaledToFit()
                  .frame(width: 80, height: 80)
                  .clipShape(RoundedRectangle(cornerRadius: 8))
                
                Text("Most fruits are naturally low in fat, sodium, and calories. None have cholestrol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                  .font(.footnote)
              }
                
            }
            
            // MARK: - SECTION 2
            
            // MARK: - SECTION 3
            
            GroupBox(label: SettingLabelView(text: "Application", image: "apps.iphone")) {
              
              SettingRowView(name: "Developer", content: "John / Jane")
              
              SettingRowView(name: "Designer", content: "Robert Petras")
              
              SettingRowView(name: "Compatibility", content: "iOS 18")
              
              SettingRowView(
                name: "Website",
                linkLabel: "SwiftUI Masterclass",
                linkDestination: "swiftuimasterclass.com"
              )
              
              SettingRowView(
                name: "Twitter",
                linkLabel: "@RobertPetras",
                linkDestination: "twitter.com/robertpetras"
              )
              
              SettingRowView(
                name: "SwiftUI", content: "3.0"
              )
              
              SettingRowView(
                name: "Version", content: "1.1.0"
              )

            } //: BOX
          } //: VSTACK
          .navigationTitle(Text("Settings"))
          .toolbar() {
            Button {
              presentationMode.wrappedValue.dismiss()
            } label: {
              Image(systemName: "xmark")
            }
          }
          .padding()
        } //: SCROLL
      } //: NAVIGATION
    }
}

#Preview {
    SettingView()
}
