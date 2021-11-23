import UIKit

// 키 : 값
var myFriends = ["bestFriend" : "쩡우럭", "highschool" : "영희"]

let myBestFriend = myFriends["bestFriend"]

let highSchoolFriend = myFriends["highschool"]

let youtubeFriend = myFriends["youtube", default: "친구 없음"]

myFriends["bestFriend"] = "개발하는 쩡우럭"

let myBF = myFriends["bestFriend"]

myFriends["newFriend"] = "철수"

let newFriend = myFriends["newFriend"]

myFriends.updateValue("수잔", forKey: "girlFriend")

let girlFriend = myFriends["girlFriend"]

myFriends.updateValue("잭슨", forKey: "bestFriend")

//let emptyDictionary : [String: Int] = [:]
//let emptyDictionary : [String: Int] = [String: Int]()
let emptyDictionary = [String: Int]()

let myEmptyDictionary : [String : Int] = Dictionary<String, Int>()

myFriends.count

for item in myFriends {
    print("item : ", item)
}
