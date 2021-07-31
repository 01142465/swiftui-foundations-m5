//
//  ContentModel.swift
//  LearningApp
//
//  Created by David Estrada on 7/31/21.
//

import Foundation

class ContentModel: ObservableObject {
    
    @Published var modules = [Module]()
    var styleData:Data?
    
    init() {
        getLocalData()
    }
    
    func getLocalData () {
        
        //get a url to the json file
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        do {
        //read the file nto a data object
            let jsonData = try Data(contentsOf: jsonUrl!)
            
            // try to decode the json into an array of json
            let jsonDecoder = JSONDecoder()
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
            
            //assing parsed modules to modules property
            self.modules = modules
        }
        catch {
            //TODO log error
            print("couldn't parse local data")
        }
        
        do {
        //parse the style data
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "html")
        
            // read the file into a data object
            let styleData = try Data(contentsOf: styleUrl!)
            self.styleData = styleData
            
        }
        catch {
            //Log error
            print("couldn't parse style data")
        }
        
    }
    
}
