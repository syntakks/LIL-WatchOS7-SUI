//
//  HuliPizzaMenuApp.swift
//  HuliPizzaMenuWatch WatchKit Extension
//
//  Created by Steve Wall on 7/28/22.
//

import SwiftUI

@main
struct HuliPizzaMenuApp: App {
  @SceneBuilder var body: some Scene {
    WindowGroup {
      NavigationView {
        ContentView()
      }
    }
    
    WKNotificationScene(controller: NotificationController.self, category: "myCategory")
  }
}
