import UIKit

class Friend {
    var name : String
    
    init(_ name: String) {
        self.name = name
    }
    
    func sayHi(){
        print("안녕? 난 \(self.name) 라고 해 ")
    }
}

class BestFriend : Friend {
    override init(_ name: String) {
        
        // override로 부모의 메소드를 가져왔다.
        super.init("배프 " + name)
    }
    
    override func sayHi() {
        super.sayHi()
    }
}

let myFriend = Friend("쩡우럭")

myFriend.sayHi()

let myBestFriend = BestFriend("영희")

myBestFriend.sayHi()

myBestFriend.name

