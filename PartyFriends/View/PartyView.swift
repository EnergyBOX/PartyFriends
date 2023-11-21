import SwiftUI

// this file is sufficiently developed

struct PartyView: View {
    @ObservedObject var viewModel: PartyViewModel

    
    var body: some View {
        List {
            ForEach (viewModel.parties) { party in
                NavigationLink {
                    EditPartyView(viewModel: viewModel, party: party)
                } label: {
                    VStack {
                        Text(party.name)
                        Text("\(party.id)")             // for debugging
                            .foregroundColor(.gray)     // for debugging
                            .font(.caption2)            // for debugging
                    }

                }
            }
            .onMove(perform: viewModel.moveParty)
            .onDelete(perform: viewModel.deleteParty)
        }
        .navigationTitle("Party List")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink {
                AddPartyView(viewModel: viewModel)
            } label: {
                Image(systemName: "plus")
            }
                
        )
    }
}

struct PartyView_Previews: PreviewProvider {
    static var previews: some View {
        PartyView(viewModel: PartyViewModel())
    }
}
