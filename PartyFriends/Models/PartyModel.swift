import Foundation

class PartyClass: Identifiable {
    var id = UUID()
    var partyName: String
//    var partyPerson: [PersonModel]
//    var partyReceipt: [ReceiptModel]
    
    init(id: UUID = UUID(), partyName: String) {
        self.id = id
        self.partyName = partyName
    }
}

class PartiesClass: Identifiable, ObservableObject {
    var id = UUID()
    @Published var items = [PartyClass]()
    
    func addItem() {
        let newParty = PartyClass(partyName: "New Party")
        items.append(newParty)
    }
    
    func moveItem(from source: IndexSet, to destination: Int) {
        items.move(fromOffsets: source, toOffset: destination)
    }
    
    func deleteItem(index: IndexSet) {
        items.remove(atOffsets: index)
    }
    
    
}

