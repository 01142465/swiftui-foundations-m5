//
//  Models.swift
//  LearningApp
//
//  Created by David Estrada on 7/31/21.
//

import Foundation

struct Module: Decodable, Identifiable{
    
    var id:Int
    var category:String
    var content:Content
    var test:test
    
}

struct Content: Decodable, Identifiable{
    
    var id:Int
    var image:String
    var time:String
    var description:String
    var lessons:[lesson]
    
}

struct lesson: Decodable, Identifiable {
    
    var id:Int
    var title:String
    var video:String
    var duration:String
    var explanation:String
    
}

struct test: Decodable, Identifiable {
    var id:Int
    var image:String
    var time:String
    var description:String
    var questions:[Question]

}

struct Question: Decodable, Identifiable{
    
    var id:Int
    var content:String
    var correctIndex:Int
    var answers:[String]
}
