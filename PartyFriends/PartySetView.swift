//
//  PartySet.swift
//  PartyFriends
//
//  Created by Server Admin on 12.11.2023.
//

import SwiftUI

struct PartySetView: View {
    
    @State var partyName: String //??

    var body: some View {
        VStack {
            TextField("Name", text: $partyName)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color(.gray))
                .cornerRadius(10)
            Button(action: saveButton) {
                Text("Save")
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

func saveButton() {
    //Sace function
}


struct PartySet_Previews: PreviewProvider {
    static var previews: some View {
        PartySetView(partyName: "???") // no no no
    }
}
