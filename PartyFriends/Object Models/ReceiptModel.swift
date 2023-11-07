import Foundation
import SwiftUI

struct ItemModel {
    var itemName: String
    var goodsCategory: GoodsModel
    var itemPrise: Double
}

struct ReceiptModel: Identifiable {
    var id: String = UUID().uuidString
    var itemArray: [ItemModel]
    var receiptPayer: PersonModel
}
