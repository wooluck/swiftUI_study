import UIKit

//set 은 순서가 고정되있는게 아니라 계속 변동이 된다 .
var myNumberSet : Set<Int> = Set<Int>()

myNumberSet.insert(1)
myNumberSet.insert(2)
myNumberSet.insert(2)
myNumberSet.insert(3)
myNumberSet.insert(3)

myNumberSet.count // set은 똑같은 녀석이 들어가면 안들어가진다 .
myNumberSet

for aNumber in myNumberSet {
    print("aNumber: ", aNumber)
}

var myFriends : Set<String> = ["철수", "영희", "수지"]
var myBestFriends : [String] = ["철수", "영희", "수지"]

myBestFriends.contains("수지")
myFriends.contains("철수")

if let indexToRemove =  myFriends.firstIndex(of: "수지") {
    print("indexToRemove : ", indexToRemove)
    myFriends.remove(at: indexToRemove)
}

if !myFriends.contains("수지") {
    print("내 친구중에 수지가 없다 .")
}
