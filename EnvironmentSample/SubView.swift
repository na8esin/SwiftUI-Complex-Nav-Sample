import SwiftUI

struct SubView: View {
  @State var value: String?
  @Environment(PathVM.self) private var pathVM
  @State var timer: Timer?
  
  var body: some View {
    VStack {
      Text("ここは、SubViewです、3秒後にSub2Viewに移動します。")
    }
    .onAppear {
      // Web APIなどで通信が完了したら画面遷移するイメージ
      timer = Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { timer in
        pathVM.someVariable = "from SubView Variable"
        pathVM.path.append(Route.sub2)
      }
    }
    .onDisappear {
      timer?.invalidate()
    }
  }
}

#Preview {
  SubView()
}
