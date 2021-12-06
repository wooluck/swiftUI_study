import UIKit

class Friend {
    var name : String
    func changeName(newName: String) {
        self.name = newName
    }
    init(_ name: String){
        self.name = name
    }
}


var myFriend = Friend("쩡우럭")

myFriend.changeName(newName: "개발하는 쩡우럭")

myFriend.name
//myFriend.changeName()

struct BestFriend { // struct 안에서맴버변수를 변경하고 싶다 !!! 하면 mutating 을 앞에 붙여주면됨.
    
    var name : String
    
    mutating func changeName(newName : String) {
        self.name = newName
//        print("newName: " , newName)
    }
    
    }

var myBestFriend = BestFriend(name: "쩡우럭")

myBestFriend.changeName(newName: "gg")

