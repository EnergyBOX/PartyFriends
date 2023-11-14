import SwiftUI

class PurchaseViewModel: ObservableObject {
    @Published var purchases: [Purchase] = []
    
    func addPurchase() {
        let newPurchase = Purchase(cost: 0.0, productCategory: nil, holder: nil)
        purchases.append(newPurchase)
    }
}
