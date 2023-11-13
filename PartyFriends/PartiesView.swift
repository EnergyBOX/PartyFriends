//
//  PartyList.swift
//  PartyFriends
//
//  Created by Server Admin on 12.11.2023.
//

import SwiftUI

struct PartiesView: View {
    
    @EnvironmentObject var parties: PartiesClass
//    @ObservedObject var parties = PartiesClass()
    
    var body: some View {
        List {
            ForEach(parties.items) { item in
                NavigationLink {
                    PartySetView(partyName: item.partyName)
                } label: {
                    PartyView(partyName: item.partyName)
                }
            }
            .onMove(perform: parties.moveItem)
            .onDelete(perform: parties.deleteItem)
        }
        .navigationTitle("Party List")
        .listStyle(GroupedListStyle())
        .navigationBarItems(
            leading: EditButton(),
            trailing: Button(action: {
                parties.addItem()
            }, label: {
                Image(systemName: "plus")
            })
        )
    }
}

struct PartyList_Previews: PreviewProvider {
    static var previews: some View {
        PartiesView()
    }
}
