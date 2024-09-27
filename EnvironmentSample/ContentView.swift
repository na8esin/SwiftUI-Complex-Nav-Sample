import SwiftUI

/// https://developer.apple.com/documentation/swiftui/bindable

struct ContentView: View {
  @Environment(PathVM.self) private var pathVM
  
  var body: some View {
    @Bindable var pathVM = pathVM
    NavigationStack(path: $pathVM.path) {
      VStack {
        Text("hello")
        Button("Push!") {
          pathVM.path.append("welcom")
        }
      }
      .navigationDestination(for: String.self) { selection in
        SubView(value: "\(selection)")
      }
    }
  }
}

#Preview {
  ContentView()
    .environment(PathVM())
}
