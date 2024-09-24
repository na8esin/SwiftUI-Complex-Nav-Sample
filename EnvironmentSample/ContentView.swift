import SwiftUI

struct ContentView: View {
  @Environment(Library.self) private var library
  
  var body: some View {
    Text("\(library.books.last!.id)")
    Button("Push!") {
      library.books.append(Book())
    }
  }
}

#Preview {
  ContentView()
}
