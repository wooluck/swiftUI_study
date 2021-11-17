import UIKit


// 유튜버 (데이터) 모델 - struct / 구조체
struct YoutuberStruct {
    var name: String
    var subscribersCount: Int
}

var Jeong = YoutuberStruct(name: "정우석", subscribersCount:  100)

var JeongClone = Jeong

print("값 넣기 전 JeongClone.name : \(JeongClone.name)")

JeongClone.name = "다른놈"
//값 복사이기 때문에 둘의 값이 다르다.
print("값 넣은 후 JeongClone.name : \(JeongClone.name)")
print("값 넣은 후 Jeong.name : \(Jeong.name)")

// 클래스
class YoutuberClass { // 클래스는 생성자를 만들어야한다 . -> 메모리에 올린다.
    var name: String
    var subscribersCount: Int
    // 생성자 - 즉, 메모리에 올린다.
    // init 으로 매개변수를 가진 생성자 메소드를 만들어야 배개변수를 넣어서 그값을 가진 객체(object)를 만들수 있다.
    init(name: String, subscribersCount: Int){
        self.name = name
        self.subscribersCount = subscribersCount
        
    }
}

var woo = YoutuberClass(name: "정우석", subscribersCount: 9999)
var wooClone = woo

print("값 넣기 전 wooClone.name : \(wooClone.name)")

wooClone.name = "우클론"

print("값 넣기 후 wooClone.name : \(wooClone.name)")

print("값 넣기 후 woo.name : \(woo.name)")



