import UIKit

enum MismatchError: Error {
    case nameMismatch
    case numberMismatch
}

// 에러를 던지는 메소드
func guessMyName(name input: String ) throws {
    print("guessMyName() called")
    if input != "쩡우럭" {
        print("x")
        throw MismatchError.nameMismatch
//        return // 여기서 걸리면 밑에있는건 실행 x
    }
    print("o")
}



/// 번호를 맞춘다
/// - Parameter input: 사용자 숫자 입력
/// - Returns:  bool 맞췄는지 여부
func guessMyNumber(number input: Int ) throws -> Bool  {
    print("guessMyName() called")
    if input != 10 {
        print("x")
        throw MismatchError.numberMismatch
//        return // 여기서 걸리면 밑에있는건 실행 x
    }
    print("o")
    return true
}



//try? guessMyName(name: "쩡우럭") // 에러가 있어도 출력안한다!


do {
    let receivedValue = try guessMyNumber(number: 9)
} catch {
    print("잡은 에러: \(error)")
}
