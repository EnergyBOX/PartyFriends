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

class PartiesClass: ObservableObject {
    var items = [PartyClass]()
    
    func addItem() {
        let newParty = PartyClass(partyName: "New Party")
        items.append(newParty)
        print(items)//test
    }
    func moveItem(from source: IndexSet, to destination: Int) {
        items.move(fromOffsets: source, toOffset: destination)
    }
    
    func deleteItem(index: IndexSet) {
        items.remove(atOffsets: index)
    }
    
    
}

