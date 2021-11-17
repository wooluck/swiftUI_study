import UIKit

// String 을 반환하는 클로저

let myName: String = {
    // 이부분이 myName 으로 들어간다
    return "정우럭"
}()

print(myName)

// 클로저 정의
let myRealName: (String) -> String = { (name: String) -> String in
    return "개발하는 \(name)"
}

myRealName("쩡우럭")

let myRealNameLogic: (String) -> Void = { (name: String) in
    print("개발하는 \(name)")
}

myRealNameLogic("쩡대리")
