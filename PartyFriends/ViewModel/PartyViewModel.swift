import SwiftUI

class PartyViewModel: ObservableObject {
    @Published var parties: [Party] = []
    
    
    func updateParty(_ updatedParty: Party) {
        if let index = parties.firstIndex(where: { $0.id == updatedParty.id }) {
            parties[index] = updatedParty
        }
    }
    
    
    
    func addParty(name: String) {
        let newParty = Party(name: name, people: [])
        parties.append(newParty)
    }
    
    func moveParty(from source: IndexSet, to destination: Int) {
        parties.move(fromOffsets: source, toOffset: destination)
    }
    func deleteParty(index: IndexSet) {
        parties.remove(atOffsets: index)
    }
}
