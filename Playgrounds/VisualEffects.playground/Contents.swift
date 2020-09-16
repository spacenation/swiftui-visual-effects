import SwiftUI
import VisualEffects
import PlaygroundSupport

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.blue)
                .frame(width: 100, height: 100)
            Rectangle()
                .opacity(0.5)
                .frame(width: 200, height: 200)
                .background(
                    VisualEffectBlur()
                )
        }
    }
}

PlaygroundPage.current.setLiveView(ContentView())
