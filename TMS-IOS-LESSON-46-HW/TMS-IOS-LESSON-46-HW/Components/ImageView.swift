import SwiftUI

struct ImageView: View {
    var urlString: String
    var width = 140.0
    var height = 80.0
    var cornerRadius = 8.0
    
    var body: some View {
        AsyncImage(url: URL(string: urlString)) { image in
             image
                 .resizable()
                 .scaledToFill()
         } placeholder: {
             ProgressView()
         }
         .frame(width: width, height: height)
         .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
    }
}
