//
//  Party.swift
//  PartyFriends
//
//  Created by Server Admin on 12.11.2023.
//

import SwiftUI


struct PartyView: View {
    
    let partyName: String
    
    var body: some View {
        Text("\(partyName)One link of Partylist")
    }
}

struct Party_Previews: PreviewProvider {
    static var previews: some View {
        PartyView(partyName: "What must be hear ??")
    }
}
