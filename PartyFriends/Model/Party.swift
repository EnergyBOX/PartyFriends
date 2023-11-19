import Foundation

// this file is sufficiently developed

class Party: Identifiable, Codable {
    var id: UUID
    var name: String
    var people: [Person]
    
    init(id: UUID = UUID(), name: String, people: [Person]) {
        self.id = id
        self.name = name
        self.people = people
    }    
}
