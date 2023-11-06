//
//  ReceiptModel.swift
//  PartyFriends
//
//  Created by Server Admin on 06.11.2023.
//

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
