//
//  RecipeFeaturedView.swift
//  Recipe List App
//
//  Created by David Estrada on 7/28/21.
//

import SwiftUI

struct RecipeFeaturedView: View {
    
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text("Featured Recipes")
                .bold()
                .padding(.leading)
                .font(.largeTitle)
            
            GeometryReader { geo in
                
                TabView {
                   
                    //loop throufh each recipe only show those that should be featured.
                    ForEach(0..<model.recipes.count) {index in
                        
                        if model.recipes[index].featured == true {
                            
                            ZStack{
                                Rectangle()
                                    .foregroundColor(.white)
                                 
                                VStack(spacing: 0){
                                    Image(model.recipes[index].image)
                                        .resizable()
                                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                        .clipped()
                                    Text(model.recipes[index].name)
                                        .padding()
                                    
                                    
                                }
                            }.frame(width: geo.size.width - 40, height: geo.size.height - 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(15)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                          
                                
                        }
                        
                    }
                    
                }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Preparation Time: ")
                    .font(.headline)
                Text("1 hours")
                Text("Highlights")
                    .font(.headline)
                Text("highlights explanations")
            }
            .padding([.leading, .bottom])
            
        
        }
        
        
    }
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView()
            .environmentObject(RecipeModel())
    }
}
