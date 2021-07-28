//
//  ContentView.swift
//  challengeM4.TabViews
//
//  Created by David Estrada on 7/27/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var tabTag = 0
    var body: some View {
        
        TabView (selection: $tabTag) {
            
            Text("This tab’s tag is \(tabTag).")
                .tabItem {
                    VStack {
                        Image(systemName: "tortoise")
                        Text("Tab1")
                    }
                }
                .tag(0)
        
            Button("Take me to tab3") {
                tabTag = 2
            }
            .tabItem {
                    VStack {
                        Image(systemName: "arrow.right.circle.fill")
                        Text("Tab2")
                }
            }
            .tag(1)
                        
            List {
                ForEach(0..<100) { _ in
                    Text("Te Amo cara de Marranito")
                }
            }
                .tabItem {
                    VStack {
                        Image(systemName: "hands.clap")
                        Text("Tab 3")
                    }
                }
                .tag(2)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
