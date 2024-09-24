import SwiftUI

/// https://developer.apple.com/documentation/swiftui/environment

struct Book {
  let id = UUID()
  let isAvailable = false
}

@Observable
class Library {
  var books: [Book] = [Book(), Book(), Book()]
  
  var availableBooksCount: Int {
    books.filter(\.isAvailable).count
  }
}

@main
struct EnvironmentSampleApp: App {
  //@State private var library = Library()
  @State private var pathVM = PathVM()
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environment(pathVM)
    }
  }
}
