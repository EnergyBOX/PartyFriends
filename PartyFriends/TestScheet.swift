import SwiftUI

struct Scheet: View {
    @State private var isPresented = false
    var body: some View {
        NavigationView {
            Button("Show settings") {
                self.isPresented = true
            }.sheet(isPresented: $isPresented) {
                Text("Some setings")
            }
        }
    }
}

struct Scheet_Previews: PreviewProvider {
    static var previews: some View {
        Scheet()
    }
}
