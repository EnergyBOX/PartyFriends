import SwiftUI

struct AddPartyView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel: PartyViewModel
    @State var partyName: String = ""
    
    var body: some View {
        Form {
            Section {
                TextField("Party name", text: $partyName)
            }
            .navigationTitle("Create New Party")
            .navigationBarItems(trailing: Button (action: {
                viewModel.addParty(name: partyName)
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
