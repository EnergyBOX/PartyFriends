//import SwiftUI
//
//struct PartyDetailView: View {
//    var party: Party
//    @ObservedObject var viewModel: PartyViewModel
//    @State private var partyName: String
//    @State private var people: [Person]
//
//    init(party: Party, viewModel: PartyViewModel) {
//        self.party = party
//        self.viewModel = viewModel
//        self._partyName = State(initialValue: party.name)
//        self._people = State(initialValue: party.people)
//    }
//
//    var body: some View {
//        Form {
//            Section(header: Text("Вечірка")) {
//                TextField("Назва", text: $partyName)
//            }
//
//            Section(header: Text("Люди")) {
//                List {
//                    ForEach(people, id: \.id) { person in
//                        VStack {
//                            Text(person.name)
//                        }
//                    }
//                    .onDelete { indices in
//                        people.remove(atOffsets: indices)
//                    }
//                }
//            }
//
//            Section {
//                Button("Зберегти зміни") {
//                    let updatedParty = Party(name: partyName, people: people)
//                    viewModel.updateParty(updatedParty: updatedParty)
//                }
//            }
//        }
//        .navigationTitle("Редагувати вечірку")
//    }
//}
//
//struct PartyDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        PartyDetailView(party: Party(name: "Test Party", people: []), viewModel: PartyViewModel())
//    }
//}
//
//
//
//
