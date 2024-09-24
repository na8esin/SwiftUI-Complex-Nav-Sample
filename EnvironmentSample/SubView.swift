import SwiftUI

struct SubView: View {
  @State var value: String?
  @Environment(PathVM.self) private var pathVM
  
  var body: some View {
    VStack {
      Text(value!)
      Button("Push") {
        pathVM.path.append("from SubView")
      }
    }
  }
}

#Preview {
  SubView()
}
