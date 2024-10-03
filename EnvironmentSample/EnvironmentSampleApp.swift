import SwiftUI

/// https://developer.apple.com/documentation/swiftui/environment

@main
struct EnvironmentSampleApp: App {
  @State private var pathVM = PathVM()
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environment(pathVM)
    }
  }
}
