//
//  RecipeListView.swift
//  Recipe List App
//
//  Created by David Estrada on 7/26/21.
//

import SwiftUI

struct RecipeListView: View {
    
    //reference view model
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
       
        NavigationView {
            List(model.recipes) { r in
                
                //MARK: Row item
                NavigationLink( destination: RecipeDetailView(recipe: r), label: {
                    HStack(spacing: 20.0) {
                        Image(r.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50, alignment: .center)
                            .clipped()
                            .cornerRadius(5)
                        Text(r.name)
                    }
                    
                })
            }
            .navigationBarTitle("All Recipes")
            
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        
        RecipeListView()
    }
}