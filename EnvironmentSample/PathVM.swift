import SwiftUI

// https://tanaschita.com/swiftui-navigationpath/
enum Route: Hashable {
  case sub2
}

@Observable
class PathVM {
  var path = NavigationPath()
  var someVariable: String = ""
}
