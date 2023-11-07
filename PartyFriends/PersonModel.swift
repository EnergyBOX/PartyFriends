import Foundation
import SwiftUI

struct PersonModel: Identifiable {
    let id = UUID()
    var name: String
    var surName: String
    var financialCondition: Double //it must use computed properties
    //maybe there will be more properties here ...
}

class PersonList: ObservableObject {
    @Published var personArray = [PersonModel]()
    
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


