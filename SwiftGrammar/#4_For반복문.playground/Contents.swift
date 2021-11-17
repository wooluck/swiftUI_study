import UIKit


// 0...5 -> 0,1,2,3,4,5
for index in 0...5 {
    print ("index : \(index)")
}


for index in 0..<5 where index % 2 == 0 {
    print ("짝수 : \(index)")
}

//var randomInst: [Int] = []
var randomInts: [Int] = [Int]()

for _ in 0..<25 { // 이름 넣기싫을때는 언더바(_) 쓰면된다.
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}

print("randomInts: \(randomInts)")
