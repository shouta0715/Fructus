//
//  FructusApp.swift
//  Fructus
//
//  Created by k21047kk on 2025/01/08.
//

import SwiftUI

@main
struct FructusApp: App {
  @AppStorage("isOnboarding") var isOnboarding: Bool = true
  @State private var isShowingSettings: Bool = false
  
    var body: some Scene {
        WindowGroup {
          ZStack {
            if isOnboarding {
              OnboardingView()
            } else {
              ContentView(isShowingSettings: $isShowingSettings)
            }
          }
          .animation(.easeOut(duration: 0.25),value: isOnboarding)
          .sheet(isPresented: $isShowingSettings) {
            SettingView()
              .presentationDragIndicator(.visible)
          }
        }
    }
}
