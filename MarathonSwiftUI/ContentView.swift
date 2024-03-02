import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            GeometryReader { geometry in
                VStack {
                    ScrollView {
                        VStack {
                            ForEach(1...100, id: \.self) { index in
                                Text("\(index)").frame(width: geometry.size.width)
                                    .font(.title)
                            }
                        }
                    }.scrollClipDisabled()
                    Rectangle()
                        .fill(Color.red.opacity(0.5))
                        .frame(height: 50)
                }
            }
            .tabItem {
                Image(systemName: "star")
                Text("First")
            }
            .tag(0)
        }
        .edgesIgnoringSafeArea(.all)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
