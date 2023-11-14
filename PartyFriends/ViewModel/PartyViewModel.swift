import SwiftUI

class PartyViewModel: ObservableObject {
    @Published var parties: [Party] = []
    
    func addParty() {
        let newParty = Party(name: "", people: [])
        parties.append(newParty)
    }
    
    func moveParty(from source: IndexSet, to destination: Int) {
        parties.move(fromOffsets: source, toOffset: destination)
    }
    
    func deleteParty(index: IndexSet) {
        parties.remove(atOffsets: index)
    }
}
