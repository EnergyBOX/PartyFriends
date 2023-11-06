import SwiftUI

struct PersonContentView: View {
    
    // this thing dets informaion from a class that cotains a list of persons
    @ObservedObject var personList: PersonList = PersonList()
    
    @State private var showingAddPersonViev = false
    
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
            trailing: Button(action: {
                showingAddPersonViev = true
            }, label: {
                Image(systemName: "plus")
            })
        )
        .sheet(isPresented: $showingAddPersonViev) {
            AddPersonView(personList: personList) // dont andestent this moment #1
        }
    }
}

struct PersonContentView_Previews: PreviewProvider {
    static var previews: some View {
        PersonContentView()
    }
}
