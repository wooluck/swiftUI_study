import UIKit

var title = ""

let jobTitle = "개발자"

//jobTitle

func sayName(_ name: String) {
    print("안녕? 난 \(name) 이라고 해 ")
}

func sayHi(_ name: inout String) { // 받아들려오는 name 은 let 이라 못바꾸는데 inout붙이면댐
    name = "개발하는 " + name
    print("안녕? 난 \(name) 이라고 해 ")
}

sayName("쩡우럭")

var name = "쩡우럭"

sayHi(&name)
