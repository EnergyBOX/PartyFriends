import SwiftUI

class PartyViewModel: ObservableObject {
    @Published var parties: [Party] = []
    
    func addParty(_ addParty: Party) {
        let newParty = Party(name: addParty.name, people: addParty.people)
        parties.append(newParty)
    }
    
    func editParty(_ editParty: Party) {
        if let index = parties.firstIndex(where: { $0.id == editParty.id }) {
            parties[index] = editParty
        }
    }
     
    func moveParty(from source: IndexSet, to destination: Int) {
        parties.move(fromOffsets: source, toOffset: destination)
    }
    
    func deleteParty(index: IndexSet) {
        parties.remove(atOffsets: index)
    }
}
