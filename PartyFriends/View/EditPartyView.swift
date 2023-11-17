import SwiftUI

struct EditPartyView: View {
    var party: Party
    @ObservedObject var viewModel: PartyViewModel
    @State private var partyName: String
    @State private var people: [Person]
    
    init(party: Party, viewModel: PartyViewModel) {
        self.party = party
        self._partyName = State(initialValue: party.name)
        self._people = State(initialValue: party.people)
        self.viewModel = viewModel
    }
    
    var body: some View {
        Form {
            Section(header: Text("Вечірка")) {
                TextField("Назва", text: $partyName)
            }
            
            Section(header: Text("Люди")) {
                List {
                    ForEach(people, id: \.id) { person in
                        Text(person.name)
                    }
                    .onDelete { indices in
                        people.remove(atOffsets: indices)
                    }
                }
            }
            
            Section {
                Button("Зберегти зміни") {
                    // Оновіть або збережіть дані в ViewModel
                    // Наприклад, viewModel.updateParty(party: party, newName: partyName, newPeople: people)
                }
            }
        }
        .navigationTitle("Редагувати вечірку")
    }
}

struct EditPartyView_Previews: PreviewProvider {
    static var previews: some View {
        EditPartyView(party: Party(name: "", people: []), viewModel: PartyViewModel()) //its mistake???
    }
}
