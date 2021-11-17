import UIKit
import Foundation

// () -> Void
//func completion() {
//
//}



// completion 이라는 클로저를 매개변수로 가지는 메소드 정의
func sayHi(completion: () -> Void) { // sayHi 라는 메소드라하자
    print("sayHi() called")
    sleep(2) // 2초 잠깐 멈추기
    // completion 클로저 실행
    completion()
}

// 메소드 호출부분에서 이벤트 종료를 알 수 있다.
sayHi {
    print("2초가 지났다 1")
}

sayHi() {
    print("2초가 지났다 2")
}

sayHi {
    print("2초가 지났다 3")
}

// (String) -> Void
func completion(userInput: String) {
    
}


// 매개변수로서 데이터를 반환하는 클로저
func sayHiWidthName(completion: (String) -> Void){
    print("sayHiWithName() called")
    sleep(2)
    // 클로저를 실행과 동시에 데이터를 반환
    completion("오늘도 빡코딩!")
}

sayHiWidthName(completion: {(comment: String) in
    print("2초 뒤에 그가 말했다 comment: ", comment)
})

sayHiWidthName(completion: {comment in
    print("2초 뒤에 그가 말했다 comment: ", comment)
})

sayHiWidthName { comment in
    print("2초 뒤에 그가 말했다 comment: ", comment)
}

sayHiWidthName {
    print("2초 뒤에 그가 말했다 comment: ", $0)
}


// (String, String) -> Void)
//func completion(first: String, second: String) {
//
//}

// 매개변수로서 데이터를 '여러개' 반환하는 클로저
func sayHiWidthFullName(completion: (String, String) -> Void){
    print("sayHiWithName() called")
    sleep(2)
    // 클로저를 실행과 동시에 데이터를 반환
    completion("오늘도 빡코딩!","하셨죠")
}

sayHiWidthFullName { first, second in
    print("첫번째: \(first), 두번째 : \(second)")
}

sayHiWidthFullName { _, second in
    print("두번째 : \(second)")
}

sayHiWidthFullName {
    print("첫번째: \($0), 두번째 : \($1)")
}


// completion 이라는 클로저를 매개변수로 가지는 메소드 정의
func sayHiOptional(completion: (() -> Void)? = nil) {
    print("sayHiOptional() called")
    sleep(2) // 2초 잠깐 멈추기
    // completion 클로저 실행
    completion?()
}

sayHiOptional()

sayHiOptional(completion: {
    print("2초가 지났다 ")
})

// (Int) -> String
func transform(number: Int) -> String {
    return "숫자 : \(number)"
}

var myNumbers: [Int] = [0, 1, 2, 3, 4, 5]

//var transformedNumbers = myNumbers.map { aNumber in
//    return "숫자: \(aNumber)"
//}

//var transformedNumbers = myNumbers.map { (aNumber: Int) -> String in
//    return "숫자: \(aNumber)"
//}

var transformedNumbers = myNumbers.map {
    return "숫자: \($0)"
}
