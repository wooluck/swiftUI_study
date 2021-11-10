import UIKit

// 콜렉션 : 데이터를 모아둔 것
// 배열, 셋, 딕셔너리, 튜플
// 배열
var myArray: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10] // Int라는 숫자가 늘어져있는 배열
 
for item in myArray { // myArray가 가지고있는 만큼 돌릴예정! 근데 변수이름은 item이라고 하겠다 .
    print("item: \(item)")
}

for item in myArray where item > 5 {  // 조건을 넣고싶을땐 where을 넣으면 된다.
    print("item: \(item)")
}


for item in myArray where item % 2 == 0 {  
    print("item: \(item)")
}
