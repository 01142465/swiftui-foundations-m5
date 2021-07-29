//
//  ContentView.swift
//  EnvironmentObjectChallenge-d
//
//  Created by David Estrada on 7/28/21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: Model
    
    var body: some View {
        
        TabView {
            
            VStack {
                Text("People")
                    .bold()
                    .font(.title)
                
                List(model.people) { person in
                    PersonsView(person: person)
                }
            }
            .tabItem {
                Image(systemName: "person.2")
                Text("People")}
            
            VStack {
                Text("Display Preferences")
                    .bold()
                    .font(.title)
                
                Toggle("Show Name:", isOn:
                        $model.showName)
                
                Toggle("Show Address:", isOn:
                        $model.showAdd)
                Toggle("Show Company:", isOn:
                        $model.showCompany)
                
                Toggle("Show Years of Experience:", isOn: $model.showYears)
                
                Spacer()
            }
            .tabItem{
                Image(systemName: "gearshape")
                Text("Preferences")
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Model())
    }
}
