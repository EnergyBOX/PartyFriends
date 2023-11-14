import Foundation

class Person: Identifiable {
    var id = UUID()
    var name: String
    var surName: String
    var productCategory: [ProductCategory]
    
    init(name: String, surName: String, productCategory: [ProductCategory]) {
        self.name = name
        self.surName = surName
        self.productCategory = productCategory
    }
}





//// viev model
//class PersonList: ObservableObject {
//    @Published var personArray = [PersonModel]() {
//        didSet {
//            if let encoded = try? JSONEncoder().encode(personArray) {
//                UserDefaults.standard.set(encoded, forKey: "PersonArray")
//            }
//        }
//    }
//
//
//
//    func movePerson(from source: IndexSet, to destination: Int) {
//        // Implement the logic to move a person
//        personArray.move(fromOffsets: source, toOffset: destination)
//        print("// Implement the logic to move a person")
//    }
//
//    func deletePerson(index: IndexSet) {
//        personArray.remove(atOffsets: index)
//        print("// Implement the logic to delete a person")
//    }
//
//    init() {
//        if let savedPersonArray = UserDefaults.standard.data(forKey: "PersonArray") {
//            if let decodedPersonArray = try? JSONDecoder().decode([PersonModel].self, from: savedPersonArray) {
//                personArray = decodedPersonArray
//                return
//            }
//        }
//
//        personArray = []
//    }
//}


