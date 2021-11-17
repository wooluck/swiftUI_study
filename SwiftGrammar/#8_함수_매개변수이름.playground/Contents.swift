import UIKit

// 함수, 메소드 정의 1
func myFunction(name: String) -> String { //name = 매개변수
    return "안녕하세요? \(name) 입니다"
}

// 함수, 메소드를 호출한다. call
myFunction(name: "쩡우럭")


// 함수, 메소드 정의 2
func myFunctionSecond(with name: String) -> String { //name = 매개변수
    return "안녕하세요? \(name) 입니다"
}

myFunctionSecond(with: "두번째쩡우럭")

// 함수, 메소드 정의 3
func myFunctionThird(_ name: String) -> String { //name = 매개변수
    return "안녕하세요? \(name) 입니다"
}

myFunctionThird("세번째쩡우럭")
