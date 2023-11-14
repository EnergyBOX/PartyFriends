import SwiftUI

class ProductCategoryViewModel: ObservableObject {
    @Published var productCategories: [ProductCategory] = []
    
    func addProductCategory() {
        let newProductCategory = ProductCategory(name: "")
        productCategories.append(newProductCategory)
    }
    
    func movePerson(from source: IndexSet, to destination: Int) {
        productCategories.move(fromOffsets: source, toOffset: destination)
    }
    
    func deletePerson(index: IndexSet) {
        productCategories.remove(atOffsets: index)
    }
}
