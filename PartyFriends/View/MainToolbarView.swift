import SwiftUI

struct MainToolbarView: View {
    var body: some View {
        TabView {
            NavigationView {
                PartyView()
            }
            .tabItem {
                Image(systemName: "party.popper.fill")
                Text("Party")
            }
            NavigationView {
                PersonView()
            }
            .tabItem {
                Image(systemName: "person.2.fill")
                Text("Person")
            }
            NavigationView {
                ProductCategoryView()
            }
            .tabItem {
                Image(systemName: "carrot.fill")
                Text("Goods")
            }
            NavigationView {
                PurchaseView()
            }
            .tabItem {
                Image(systemName: "arrow.right.arrow.left.square.fill")
                Text("Redistribute")
            }
        }
    }
}

struct MainToolbar_Previews: PreviewProvider {
    static var previews: some View {
        MainToolbarView()
    }
}
