import SwiftUI

// this file is sufficiently developed

struct EditPartyView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel: PartyViewModel
    @State var party: Party
    
    var body: some View {
        Form {
            Section {
                TextField("Party name", text: $party.name)
            }
            .navigationTitle("Edit Party")
            .navigationBarItems(trailing: Button (action: {
                viewModel.editParty(party)
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Save")
            }))
        }
    }
}

struct EditPartyView_Previews: PreviewProvider {
    static var previews: some View {
        EditPartyView(viewModel: PartyViewModel(), party: Party(name: "", people: [])) //its mistake???
    }
}
