import SwiftUI

//this string will (some did be delete) commit for git/github
// AND if Iam add one more changes an delete previous strig its to be in next commit )))


@main
struct PartyFriendsApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    PartyContentView()
                }
                .tabItem {
                    Image(systemName: "party.popper.fill")
                    Text("Party")
                }
                NavigationView {
                    PersonContentView()
                }
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Person")
                }
                NavigationView {
                    GoodsContentView()
                }
                .tabItem {
                    Image(systemName: "carrot.fill")
                    Text("Goods")
                }
                NavigationView {
                    RedistributeContentView()
                }
                .tabItem {
                    Image(systemName: "arrow.right.arrow.left.square.fill")
                    Text("Redistribute")
                }
                //for test only
                NavigationView {
                    Scheet()
                }
                .tabItem {
                    Image(systemName: "pencil.and.outline")
                    Text("Scheet")
                }
            }
            
        }
    }
}
