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
    
    func addTestCasePerson() {
        let person1 = PersonModel(name: "Petro", surName: "Petrenco", financialCondition: 0.0)
        let person2 = PersonModel(name: "Ivan", surName: "Ivanov", financialCondition: 0.0)
        let person3 = PersonModel(name: "Stepan", surName: "Stepanenco", financialCondition: 0.0)
        personArray.append(person1)
        personArray.append(person2)
        personArray.append(person3)
    }
    
    func addPerson() {
        // Implement the logic to add a new person
        personArray.append(PersonModel(name: "Name", surName: "Surname", financialCondition: 0.0))
        print("// Implement the logic to add a new person")
    }
    
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


