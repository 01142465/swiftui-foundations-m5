//
//  RecipeDetailView.swift
//  Recipe List App
//
//  Created by David Estrada on 7/27/21.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading)
            {
                //MARK: image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                    
                
                //MARK: Ingredients
                VStack(alignment: .leading) {
                    Text("Ingredients")
                        .font(.headline)
                        .padding([.bottom, .top], 5)
                    ForEach (recipe.ingredients, id: \.self) { ing in
                        Text("- " + ing)
                    }
                } .padding(.horizontal)
                
                // MARK: Divider
                Divider()
                
                //MARK: Directions
                VStack(alignment: .leading) {
                    Text("Directions")
                        .font(.headline)
                        .padding([.bottom, .top], 5)
                    ForEach (0..<recipe.directions.count, id: \.self) { dir in
                        Text(String(dir+1) + ". " + recipe.directions[dir])
                            .padding(.bottom, 5)
                    }
                } .padding(.horizontal)
            }
            
        }
        .navigationBarTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        //create a dumy recipe and pass it into the detail view so that we can see a preview dizque
        
        let model = RecipeModel()
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}
