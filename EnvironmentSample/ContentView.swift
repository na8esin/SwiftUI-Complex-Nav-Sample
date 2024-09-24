import SwiftUI

/// https://developer.apple.com/documentation/swiftui/bindable

struct ContentView: View {
  //@Environment(Library.self) private var library
//  @State private var path = NavigationPath()

  @Environment(PathVM.self) private var pathVM
  
  var body: some View {
//    @Bindable var library = library
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
