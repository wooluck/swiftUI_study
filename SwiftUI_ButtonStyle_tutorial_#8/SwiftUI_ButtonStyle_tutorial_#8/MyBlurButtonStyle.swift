//
//  MyBlurButtonStyle.swift
//  SwiftUI_ButtonStyle_tutorial_#8
//
//  Created by 우럭mac on 2021/11/12.
//

import SwiftUI

struct MyBlurButtonStyle: ButtonStyle {
    var color: Color
    
    
    func makeBody(configuration: Configuration) -> some View {
        
        
        configuration
            .label
            .font(.system(size: 20))
            .foregroundColor(Color.white)
            .padding()
            .background(color)
            .cornerRadius(20)
            .blur(radius: configuration.isPressed ? 10 : 0)
        
        
//        configuration.isPressed
//
//        configuration.self
    }
}

//struct MyBlurButtonStyle_Previews: PreviewProvider {
//    static var previews: some View {
//        MyBlurButtonStyle()
//    }
//}
