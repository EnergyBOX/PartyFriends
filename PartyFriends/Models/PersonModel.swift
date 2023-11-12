import Foundation
import SwiftUI

struct PersonModel: Identifiable, Codable {
    var id = UUID()
    let name: String
    let surName: String
    let financialCondition: Double //it must use computed properties
    //maybe there will be more properties here ...
}

class PersonList: ObservableObject {
    @Published var personArray = [PersonModel]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(personArray) {
                UserDefaults.standard.set(encoded, forKey: "PersonArray")
            }
        }
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
    
    init() {
        if let savedPersonArray = UserDefaults.standard.data(forKey: "PersonArray") {
            if let decodedPersonArray = try? JSONDecoder().decode([PersonModel].self, from: savedPersonArray) {
                personArray = decodedPersonArray
                return
            }
        }

        personArray = []
    }
}


