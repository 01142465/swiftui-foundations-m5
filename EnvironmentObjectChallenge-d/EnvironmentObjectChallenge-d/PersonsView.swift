//
//  PersonsView.swift
//  EnvironmentObjectChallenge-d
//
//  Created by David Estrada on 7/28/21.
//

import SwiftUI

struct PersonsView: View {
    
    @EnvironmentObject var model: Model
    var person: Person
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            if model.showName {
                Text("Name: \(person.name)")
            }
            if model.showAdd {
                Text("Address: \(person.address)")
            }
            if model.showCompany {
                Text("Company: \(person.company)")
            }
            if model.showYears {
                Text("YearsOfExp: \(person.yearsOfExperience)")
            }
            
        }
    }
}

struct PersonsView_Previews: PreviewProvider {
    static var previews: some View {
        PersonsView(person: Person(
                name: "Mamma Mia",
                address: "123 Candy Lane",
                company: "CodeWithChris",
                yearsOfExperience: 99
        )).environmentObject(Model())
    }
}
