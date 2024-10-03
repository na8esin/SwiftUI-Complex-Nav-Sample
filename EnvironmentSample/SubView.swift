import SwiftUI

struct SubView: View {
  @State var value: String?
  @Environment(PathVM.self) private var pathVM
  @State var timer: Timer?
  @State var buttonDisable: Bool = false
  
  var body: some View {
    VStack {
      Text("ここは、SubViewです")
      Button("このボタンを押すと3秒後にSub2Viewに移動します") {
        buttonDisable = true
        // Web APIなどで通信が完了したら画面遷移するイメージ
        timer = Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { timer in
          pathVM.someVariable = "from SubView Variable"
          pathVM.path.append(Route.sub2)
          buttonDisable = false
        }
      }
      .disabled(buttonDisable)
    }
    .onDisappear {
      timer?.invalidate()
      buttonDisable = false
    }
  }
}

#Preview {
  SubView()
}
