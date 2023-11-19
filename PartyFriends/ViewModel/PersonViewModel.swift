import SwiftUI

class PersonViewModel: ObservableObject {
    @Published var personnes: [Person] = []
    

    
    
    
    
    
    func movePerson(from source: IndexSet, to destination: Int) {
        personnes.move(fromOffsets: source, toOffset: destination)
    }
    func deletePerson(index: IndexSet) {
        personnes.remove(atOffsets: index)
    }
}
