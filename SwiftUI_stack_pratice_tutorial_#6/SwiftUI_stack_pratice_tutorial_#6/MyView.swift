//
//  MyView.swift
//  SwiftUI_stack_pratice_tutorial_#6
//
//  Created by 우럭mac on 2021/11/10.
//

import SwiftUI

struct MyView : View {
    
    var title: String
    
    var bgColor: Color
    
    var body: some View{
        
        ZStack{
            
            bgColor
//            .edgesIgnoringSafeArea(.all)
            
            Text(title)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(Color.white)
            
        }.animation(.none)
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView(title: "마이뷰", bgColor: Color.orange)
    }
}
