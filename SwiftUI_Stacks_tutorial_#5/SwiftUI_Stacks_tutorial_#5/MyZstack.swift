//
//  MyZstack.swift
//  SwiftUI_Stacks_tutorial_#5
//
//  Created by 우럭mac on 2021/11/05.
//

import SwiftUI

struct MyZstack: View {
    var body: some View {
        
        ZStack { // 위에서부터 아래로 쌓인다고 생각하면 됨.
           
            
            Rectangle()
                .frame(width: 50, height: 50)
                .foregroundColor(Color.yellow)
                .zIndex(1) // 순서를 표현할수 있다.같은 숫자일때는 원래대로.
                .offset(y: -100 )
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.red)
                .zIndex(1)
            
            Rectangle()
                .frame(width: 150, height: 150)
                .foregroundColor(Color.blue)
            
            
            
        }
    }
}
struct MyZstack_Previews: PreviewProvider {
    static var previews: some View {
        MyZstack()
    }
}
