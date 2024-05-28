import SwiftUI

struct ListView: View {
    private let adaptiveColumn = [
        GridItem(.adaptive(minimum: 150))
    ]
    var body: some View {
        NavigationView {
            ScrollView(){
                
                LazyVGrid(columns: adaptiveColumn, spacing: 20) {
                    ForEach(data, id: \.self) { item in
                        ListItemView(item: item)
                    }
                }
                
            }.navigationTitle("Noodles")
        }
    }
}

#Preview {
    ListView()
}
