//
//  GoodsModel.swift
//  PartyFriends
//
//  Created by Server Admin on 06.11.2023.
//

import Foundation
import SwiftUI

struct GoodsModel: Identifiable {
    var id: String = UUID().uuidString
    var goodsName: String
}
