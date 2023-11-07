//
//  AddPersonView.swift
//  PartyFriends
//
//  Created by Server Admin on 06.11.2023.
//

import SwiftUI

struct AddPersonView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private var name: String = ""
    @State private var surName: String = ""
    @State private var financialCondition: Double = 0.0
    
    var personList: PersonList // dont andestent this moment #1
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Name", text: $name)
                TextField("Sur Name", text: $surName)
                
            }
            .navigationTitle("Add new Person")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                        let newPerson = PersonModel(name: name, surName: surName, financialCondition: financialCondition)
                        personList.personArray.append(newPerson)
                        dismiss()
                    }
                }
            }
        }
    }
}

struct AddPersonView_Previews: PreviewProvider {
    static var previews: some View {
        AddPersonView(personList: PersonList()) // dont andestent this moment #1
    }
}
