import UIKit

// final 은 상속을 아예 못하게 만들어줌 !

final class Friend {
    
    var name : String
    
    init(name: String) {
        self.name = name
    }
}

class BestFriend : Friend {
    
    override init(name: String) {
        super.init(name: " 배프 " + name)
        
    }
}

let myFriend = Friend(name: "쩡우럭")
let myBestFriend = BestFriend(name: "철수")
