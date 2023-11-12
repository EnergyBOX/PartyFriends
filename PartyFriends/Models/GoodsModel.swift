import Foundation

struct GoodsModel: Identifiable, Codable {
    var id = UUID()
    let goodsName: String
}

class GoodsList: ObservableObject {
    var goodsArray = [GoodsModel]()  {
        didSet {
            if let encoded = try? JSONEncoder().encode(goodsArray) {
                UserDefaults.standard.set(encoded, forKey: "GoodsArray")
            }
        }
    }
    
    init() {
        if let savedGoodsArray = UserDefaults.standard.data(forKey: "GoodsArray") {
            if let decodedGoodsArray = try? JSONDecoder().decode([GoodsModel].self, from: savedGoodsArray) {
                goodsArray = decodedGoodsArray
                return
            }
        }

        goodsArray = []
    }
}
