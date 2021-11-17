import UIKit

struct MyArrary<SomeElement> { //<> 이 안에 어떠한 자료형이든지 받겠다 ! 라는뜻 보통 <T>로 함.

    // 제네릭을 담은 빈 배열
    var elements: [SomeElement] = [SomeElement]()
    
    init(_ elements: [SomeElement]) { // 구조체(struct)에서는 생성자 안해도되니만 편의를 위해 함
        self.elements = elements
    }
}


struct Friend {
    var name: String
}

struct PparCoder {
    var name: String
}

var mySomeArray = MyArrary([1,2,3])
print("mySomeArray: \(mySomeArray)")

var myStringArrary = MyArrary(["가","나","다"])
print("myStringArray: \(myStringArrary)")

let friend_01 = Friend(name: "철수")
let friend_02 = Friend(name: "영희")
let friend_03 = Friend(name: "수잔")

var myFriendsArray = MyArrary([friend_01,friend_02,friend_03])
print("myFriendsArray : \(myFriendsArray)")
