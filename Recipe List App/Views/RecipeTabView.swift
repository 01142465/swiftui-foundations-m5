//
//  RecipeTabView.swift
//  Recipe List App
//
//  Created by David Estrada on 7/27/21.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        
        TabView{
            Text("Mi carita de verga, te amo mucho")
                .tabItem {
                    VStack{
                        Image(systemName: "star.fill")
                        Text("Featured View")
                    }
                }
            
            RecipeListView()
                .tabItem {
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
        }
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
