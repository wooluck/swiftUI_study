import UIKit

// 다크모드 여부
var isDarkMode: Bool = false

// isDarkMode == true
//if !isDarkMode {
//    print("다크모드가 아닙니다.")
//} else {
//    print("다크모드 입니다.")
//}

var title: String = isDarkMode == true ? "다크모드 입니다." : "다크모드가 아닙니다."

print("title: \(title)")




