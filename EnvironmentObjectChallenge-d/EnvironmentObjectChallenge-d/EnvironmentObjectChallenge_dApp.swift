//
//  EnvironmentObjectChallenge_dApp.swift
//  EnvironmentObjectChallenge-d
//
//  Created by David Estrada on 7/28/21.
//

import SwiftUI

@main
struct EnvironmentObjectChallenge_dApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Model())
        }
    }
}
