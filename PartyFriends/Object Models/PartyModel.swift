import Foundation

struct PartyModel: Identifiable {
    var id: String = UUID().uuidString
    var partyName: String
    var partyPerson: [PersonModel]
    var partyReceipt: [ReceiptModel]
}
