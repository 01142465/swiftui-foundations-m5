//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by David Estrada on 7/26/21.
//

import Foundation

class RecipeModel: ObservableObject {
     
    @Published var recipes = [Recipe]()
    
    init() {
        
        //Create an instance of data service
//        let service = DataService()
        self.recipes  = DataService.getLocalData()
        
        
        
        //set the recipes property
        
        
        
    }
    
}
