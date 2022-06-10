import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello SwiftUI")
            
            Spacer()

            Text("Hello ")
                .foregroundColor(.green)
                .italic() +
            Text("SwiftUI")
                .foregroundColor(.blue)
                .bold()
            
            Spacer()
            
            Text("Hello ✋\nSwiftUI 😀")
                .font(.title)
            
            Text("Hello ✋\nSwiftUI 😀")
                .font(.title)
                .lineLimit(1)
        }
    }
}

PlaygroundPage.current.setLiveView(ContentView())
