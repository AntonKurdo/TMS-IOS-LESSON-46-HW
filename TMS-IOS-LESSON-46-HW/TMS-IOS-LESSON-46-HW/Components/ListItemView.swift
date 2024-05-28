import SwiftUI

struct ListItemView: View {
    
    var item: ListItem
    
    var body: some View {
        VStack {
            Spacer().frame(height: 24)
            Text(item.name).font(.system(size: 14)).fontWeight(.bold)
            Spacer().frame(height: 8)
            Text(item.country).font(.system(size: 12))
            Spacer().frame(height: 8)
            ImageView(urlString: item.imgUrl)
            Spacer().frame(height: 16)
            Text(item.price, format: .currency(code: "USD")).font(.system(size: 18)).fontWeight(.bold)
            Spacer().frame(height: 12)
            NavigationLink() {
                DetailsView(item:item)
            }
        label: {
            Text("More")
                .padding(.horizontal, 12)
                .frame(width: 70, height: 30)
                .foregroundColor(.white)
                .background(.yellow)
                .cornerRadius(24)
        }
            Spacer()
        }.frame(width: 180, height: 250).cornerRadius(10).background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .shadow(color: .gray, radius: 1, x: 1, y: 1)
        )
    }
}
