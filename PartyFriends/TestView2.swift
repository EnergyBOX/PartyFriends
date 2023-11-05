// its from test


import SwiftUI

struct TestView2: View {
    var body: some View {
        NavigationSplitView {
            List {
                Text("1")
                Text("2")
                Text("3")
            }
        } detail: {
            Text("4")
        }
    }
}

struct TestView2_Previews: PreviewProvider {
    static var previews: some View {
        TestView2()
    }
}
