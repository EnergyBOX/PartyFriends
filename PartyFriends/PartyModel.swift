//
//  PartyModel.swift
//  PartyFriends
//
//  Created by Server Admin on 06.11.2023.
//

import Foundation
import SwiftUI

struct PartyModel: Identifiable {
    var id: String = UUID().uuidString
    var partyName: String
    var partyPerson: [PersonModel]
    var partyReceipt: [ReceiptModel]
}
