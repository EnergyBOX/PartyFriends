import SwiftUI

// this file is sufficiently developed

struct AddPartyView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel: PartyViewModel
    @State var party: Party = Party(name: "New?", people: []) // can it init in Model section !!

    var body: some View {
        Form {
            Section {
                TextField("Party name", text: $party.name)
            }
            .navigationTitle("Create New Party")
            .navigationBarItems(trailing: Button (action: {
                viewModel.addParty(party)
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Save")
            }))
        }
    }
}

struct AddPartyView_Previews: PreviewProvider {
    static var previews: some View {
        AddPartyView(viewModel: PartyViewModel())
    }
}
