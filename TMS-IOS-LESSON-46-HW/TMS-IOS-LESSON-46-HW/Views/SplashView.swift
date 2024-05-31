import SwiftUI

struct SplashView: View {
    
    @State private var isCompleted = false
    @State private var opacity = 0.0
    
    var body: some View {
        if(isCompleted) {
            ListView()
        } else {
            ZStack {
                Image("splash-img")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .cornerRadius(16)
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Text("Business").font(.system(size: 13)).foregroundColor(.white).fontWeight(.bold)
                        Spacer().frame(width: 10)
                    }
                    Spacer().frame(height: 10)
                }
            }.frame(width: 150, height: 150).opacity(opacity).onAppear {
                withAnimation(.easeIn(duration: 1.5)) {
                    self.opacity = 1
                }
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    withAnimation {
                        self.isCompleted = true
                    }
                }
            }
        }
    }
}

#Preview {
    SplashView()
}
