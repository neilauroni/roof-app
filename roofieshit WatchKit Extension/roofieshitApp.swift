//
//  roofieshitApp.swift
//  roofieshit WatchKit Extension
//
//  Created by Neil Auroni on 8/23/22.
//

import SwiftUI

@main
struct roofieshitApp: App {
    @StateObject private var workoutManager = HealthKitManager()
    
    
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
