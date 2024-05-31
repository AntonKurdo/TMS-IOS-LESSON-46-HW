import Foundation

struct ListItem: Hashable {
    let id: UUID
    let name: String
    let description: String
    let country: String
    let imgUrl: String
    let price: Double
}
