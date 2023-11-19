import SwiftUI

// this file is sufficiently developed

class PartyViewModel: ObservableObject {
    @Published var parties: [Party] = [] {
        didSet {
            saveParty()
        }
    }
    
    let partiesKey: String = "parties_list"
    
    func getParty() {
        guard
            let data = UserDefaults.standard.data(forKey: partiesKey),
            let savedParty = try? JSONDecoder().decode([Party].self, from: data)
        else { return }
        
        self.parties = savedParty
    }
    
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
    
    func saveParty() {
        if let encodedData = try? JSONEncoder().encode(parties) {
            UserDefaults.standard.set(encodedData, forKey: partiesKey)
        }
    }
}
