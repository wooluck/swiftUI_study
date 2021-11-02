//
//  MyTextView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 우럭mac on 2021/11/02.
//

import SwiftUI

struct MyTextView: View {
    
    // 데이터를 연동시킨다. 외부에서 접근해와야하기때문에 private 안됨
    @Binding var isActivated: Bool

    // 생성자
    init(isActivated: Binding<Bool> = .constant(true)) { //constant 는 기본값
        _isActivated = isActivated
    }
    
    //@State 값의 변화를 감지 -> 뷰에 적용 ( 밑에토글에서 올라오고 다시 그려내려감)
    //private = 이 안에서만 사용하겠다.
    @State
    private var index: Int = 0

    // 배경색 배열 준비
    private let backgroundColors = [
            Color.red,
            Color.yellow,
            Color.blue,
            Color.green,
            Color.orange
        ]
    var body: some View {
        VStack {
            Spacer()
            Text("화면을 클릭하세요.\(self.index + 1) 번째")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity,
                       minHeight: 0, maxHeight: 100)
            Text("활성화 상태 : \(String(isActivated))")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(self.isActivated ? Color.yellow : Color.gray)
                .background(Color.black)
            
            Spacer()
        } //VStack
        .background(backgroundColors[index])
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            print("배경아이템이 클릭 되었다.")
            
            if(self.index == self.backgroundColors.count - 1) {
                self.index = 0
            }else {
                self.index += 1
            }
        }
    }
}

struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
