//
//  LearningAppApp.swift
//  LearningApp
//
//  Created by David Estrada on 7/31/21.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
