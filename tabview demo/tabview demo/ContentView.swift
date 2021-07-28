//
//  ContentView.swift
//  tabview demo
//
//  Created by David Estrada on 7/27/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var tabIndex = 0
    
    var body: some View {
        
        TabView(selection: $tabIndex) {
            Text("This is tab 1")
                .padding()
                .tabItem {
                    VStack{
                        Image(systemName: "pencil")
                        Text("tab1")
                    }
                }
                .tag(0)
            VStack{
                Text("tab2")
                Text("this is tab 2")
            }
            .tabItem {
                VStack{
                    Image(systemName: "star")
                    Text("tab2")
                    
                }
            }
            .tag(1)
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
