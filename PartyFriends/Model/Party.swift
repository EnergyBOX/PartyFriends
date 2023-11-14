import Foundation

class Party: Identifiable {
    var id = UUID()
    var name: String
    var people: [Person]
    
    init(name: String, people: [Person]) {
        self.name = name
        self.people = people
    }
}
