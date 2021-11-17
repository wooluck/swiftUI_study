import UIKit

var MyAge = 0 {
    willSet {
        print("값이 설정될 예정이다 . myAge: \(MyAge)")
    }
    didSet {
        print("값이 설정되었다. myAge: \(MyAge)")
    }
}

MyAge = 10
MyAge = 20
