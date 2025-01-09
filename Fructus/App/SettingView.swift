//
//  SettingView.swift
//  Fructus
//
//  Created by k21047kk on 2025/01/09.
//

import SwiftUI

struct SettingView: View {
  // MARK: - PROPERTIES
  
  @Environment(\.dismiss) var dissmiss
  @AppStorage("isOnboarding") var isOnboarding: Bool = false
  
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
            GroupBox(
              label: SettingLabelView(
                text: "Customization",
                image: "paintbrush"
              )
            ) {
              Divider()
                .padding(.vertical, 4)
              
              Text(
                "If you wish, you can restart the application by toggling the switch in this box. That way it starts the onboarding process and you will see the welcome screen again."
              )
              .padding(.vertical, 8)
              .frame(minWidth: 60)
              .layoutPriority(1)
              .font(.footnote)
              .multilineTextAlignment(.leading)
              
              Toggle(isOn: $isOnboarding) {
                if isOnboarding {
                  Text("Restarted".uppercased())
                    .fontWeight(.bold)
                    .foregroundStyle(.green)
                } else {
                  Text("Restart".uppercased())
                    .fontWeight(.bold)
                    .foregroundStyle(.secondary)
                }
              }
              .padding()
              .background(
                Color(UIColor.tertiarySystemBackground)
                  .clipShape(
                    RoundedRectangle(cornerRadius: 8,style: .continuous)
                  )
              )
            }
            
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
              dissmiss()
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
