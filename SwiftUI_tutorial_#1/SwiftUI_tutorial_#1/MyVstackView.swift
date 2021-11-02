//
//  MyVstackView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 우럭mac on 2021/11/02.
//

import SwiftUI

// 복잡해지는 뷰를 나누기
struct MyVstackView: View {
    
    // 데이터를 연동시킨다. 외부에서 접근해와야하기때문에 private 안됨
    @Binding var isActivated: Bool

    // 생성자 (필수)
    init(isActivated: Binding<Bool> = .constant(true)) { //constant 는 기본값
        self._isActivated = isActivated // _isActivated _(언더바)는 Binding<Bool> 자체를 뜻한다.
    }
    var body: some View {
        VStack {
            Text("1!")
                .fontWeight(.bold)
    //            .font(.largeTitle)
                .font(.system(size: 70)) // swiftui font size 검색
            
            Text("2!")
                .fontWeight(.bold)
    //            .font(.largeTitle)
                .font(.system(size: 70)) // swiftui font size 검색
            
            Text("3!")
                .fontWeight(.bold)
    //            .font(.largeTitle)
                .font(.system(size: 70)) // swiftui font size 검색
        } // VStack
        .background(self.isActivated ? Color.green : Color.red)
        .padding(self.isActivated ? 10 : 0)
    }
}

// 보여주는 용도
struct MyVstackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVstackView()
    }
}

