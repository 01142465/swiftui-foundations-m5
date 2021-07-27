//
//  DataService.swift
//  Recipe List App
//
//  Created by David Estrada on 7/26/21.
//

import Foundation

class DataService {

    static func getLocalData() -> [Recipe] {
        
        //parse local JSON file
        
        //get a url path tot eh json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        guard pathString != nil else {
            return [Recipe]()
        }
        
        
        //create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            //create a data object
            let data = try Data(contentsOf: url)
            
            //decode the data with a JSON decoder
            let decoder = JSONDecoder()
            
            do {
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                // add the unique IDs
                for r in recipeData {
                    r.id = UUID()
                    
                }
                // Return the Recipes
                return recipeData
            }
            catch {
                print(error)
            }
            
           
            
        }
        catch {
            //error with getting data
           print(error)
        }
          return [Recipe]()
    }
}
