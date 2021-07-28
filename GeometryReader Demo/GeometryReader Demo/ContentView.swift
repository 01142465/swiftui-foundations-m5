//
//  ContentView.swift
//  GeometryReader Demo
//
//  Created by David Estrada on 7/27/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader { geo in
            
            VStack{
                Rectangle()
                    .frame(width: geo.size.width/4 , height: geo.size.height/8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .onTapGesture{
                        print("Global x: \(geo.frame(in: .global).minX), y: \(geo.frame(in: .global).minY)")
                        print("Local x: \(geo.frame(in: .global).minX), y: \(geo.frame(in: .global).minY)")
                    }
                Rectangle()
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .frame(width: geo.size.width/4 , height: geo.size.height/8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .onTapGesture{
                        print("Global x: \(geo.frame(in: .global).minX), y: \(geo.frame(in: .global).minY)")
                        print("Local x: \(geo.frame(in: .global).minX), y: \(geo.frame(in: .global).minY)")
                    }
            }
        }
        
        
           
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
