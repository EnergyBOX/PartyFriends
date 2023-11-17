import SwiftUI

struct PartyView: View {
    @ObservedObject var viewModel = PartyViewModel()

    var body: some View {
        List {
            ForEach (viewModel.parties) { party in
                NavigationLink {
                    EditPartyView(party: party, viewModel: viewModel)
                } label: {
                    Text(party.name)
                }
            }
            .onMove(perform: viewModel.moveParty)
            .onDelete(perform: viewModel.deleteParty)

        }
        
        .navigationTitle("Party List")
        .navigationBarItems(
            leading: EditButton(),
            trailing: Text("plug")
                
                
                
                
                
//            do{
//                let par = viewModel.addParty()
//                NavigationLink(destination: {
//                    EditPartyView(party: par, viewModel: viewModel)
//                }, label: {
//                    Text("1")
//                })
//            }
                
                
                
//                NavigationLink(destination: {
//                    EditPartyView(party: viewModel.addParty(), viewModel: viewModel)
//                }, label: {
//                    Text("1")
//                })
            
            
            
            
        )
    }
}

struct PartyView_Previews: PreviewProvider {
    static var previews: some View {
        PartyView()
    }
}
