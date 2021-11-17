import UIKit
import Foundation

// 학교 - 초, 중, 고
enum School {
//    case elementary
//    case middle
//    case high
    case elementary, middle, high
}

let yourSchool = School.high
//print("yourSchool: \(yourSchool)")
print("yourSchool: ",yourSchool)

enum Grade: Int {
    case first = 1
    case second = 2
}

let yourGrade = Grade.second
print("youGrade : \(yourGrade.rawValue)") // 숫자 2를 가지고오고싶을때는 rawValue 를 넣어야한다.


enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    case high(name: String)
    
    func getName() -> String { // getName 함수를 부르면 String으로반환하겠다.}
        switch self {
        case .elementary(let name):
            return name
        case let .middle(name):
            return name
        case .high(let name):
            return name
        }
    }
}
let youMiddleSchoolName = SchoolDetail.middle(name: "우럭중학교")

print("youMiddleSchoolName : \(youMiddleSchoolName.getName())")
