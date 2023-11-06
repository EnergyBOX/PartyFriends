import Foundation
import SwiftUI

struct PersonModel: Identifiable {
    let id: String = UUID().uuidString
    var name: String
    var surName: String
    var financialCondition: Double
    // mabye hear to be more wroperproperties ...
}

class PersonList: ObservableObject {
    
    @Published var personArray: [PersonModel] = []
    
// may be this function not need more in this commit ??? 
//    func addPerson() {
//        // Implement the logic to add a new person
//        personArray.append(PersonModel(name: "Name", surName: "Surname", financialCondition: 0.0))
//        print("// Implement the logic to add a new person")
//    }
    
    func movePerson(from source: IndexSet, to destination: Int) {
        // Implement the logic to move a person
        personArray.move(fromOffsets: source, toOffset: destination)
        print("// Implement the logic to move a person")
    }
    
    func deletePerson(index: IndexSet) {
        personArray.remove(atOffsets: index)
        print("// Implement the logic to delete a person")
    }
}


