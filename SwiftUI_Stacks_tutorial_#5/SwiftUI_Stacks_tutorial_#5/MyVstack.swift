//
//  MyVstack.swift
//  SwiftUI_Stacks_tutorial_#5
//
//  Created by 우럭mac on 2021/11/03.
//

import SwiftUI

struct MyVstack: View {
    var body: some View {
        
        VStack(alignment: .trailing, spacing: 0) {
            
//            Spacer()
        
            
            Text("Word")
                .font(.system(size: 30))
                .fontWeight(.heavy)
//                .padding(.bottom, 100)
            
//            Rectangle()
//                .frame(height: 1) // 이런방법으로도 옆에 붙일수 있음
            
            Divider() // 안에있는 도형이나 글자를 정렬하기위한 놈! 근데 약간 회색선이생김
//                .opacity(0) //÷ 이렇게 하면 회색선이 보이지않음
            
            
         Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.red)
//                .padding(.vertical, 100)
            Rectangle()
                   .frame(width: 100, height: 100)
                   .foregroundColor(Color.yellow)
            
            Spacer()
                .frame(height: 50) // ok ~
            Rectangle()
                   .frame(width: 100, height: 100)
                   .foregroundColor(Color.blue)
            
//            Spacer()
//            Spacer() // 2개 넣으면 나누기가 되면서 해당하는 %에 맞춰 위치한다.
            
        } // VStack
        .frame(width: 300)
        .background(Color.green)
        
//        .edgesIgnoringSafeArea(.all)
        
    }
}
struct MyVstack_Previews: PreviewProvider {
    static var previews: some View {
        MyVstack()
    }
}
