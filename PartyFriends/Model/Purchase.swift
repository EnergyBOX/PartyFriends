import Foundation

class Purchase: Identifiable, Codable {
    var id = UUID()
    var cost: Double
    var productCategory: ProductCategory?
    var holder: Person?
    
    init(cost: Double, productCategory: ProductCategory?, holder: Person?) {
        self.cost = cost
        self.productCategory = productCategory
        self.holder = holder
    }
}
