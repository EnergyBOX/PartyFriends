import SwiftUI

struct PersonContentView: View {
    
    // this thing dets informaion from a class that cotains a list of persons
    @ObservedObject var personList: PersonList = PersonList()
    
    var body: some View {
        List {
            ForEach(personList.personArray) { person in
                HStack {
                    VStack(alignment: .leading) {
                        Text("\(person.name) \(person.surName)")
                        Text("\(person.id)")
                            .foregroundColor(.gray)
                            .font(.caption2)
                    }
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text("\(person.financialCondition)")
                    }
                }
                
                
            }
            .onMove(perform: personList.movePerson)
            .onDelete(perform: personList.deletePerson)
        }
        .listStyle(GroupedListStyle())
        .navigationTitle("Person List")
        .navigationBarItems(
            leading: EditButton(),
            trailing: addPersonButton
        )
    }
    
    var addPersonButton: some View {
        Button {
            personList.addPerson()
        } label: {
            Image(systemName: "plus")
        }
    }
}

struct PersonContentView_Previews: PreviewProvider {
    static var previews: some View {
        PersonContentView()
    }
}
