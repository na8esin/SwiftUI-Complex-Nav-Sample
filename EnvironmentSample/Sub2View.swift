import SwiftUI

struct Sub2View: View {
  @State var value: String?
  @Environment(PathVM.self) private var pathVM
  
  var body: some View {
    VStack {
      Text(pathVM.someVariable)
    }
  }
}

#Preview {
  Sub2View()
}
