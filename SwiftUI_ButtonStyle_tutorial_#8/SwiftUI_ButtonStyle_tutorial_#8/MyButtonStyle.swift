//
//  MyButtonStyle.swift
//  SwiftUI_ButtonStyle_tutorial_#8
//
//  Created by 우럭mac on 2021/11/11.
//

import SwiftUI

enum ButtonType {
    case tab
    case long
//    case smaller
//    case rotate
//    case blur
}

struct MyButtonStyle : ButtonStyle {
    
    var color: Color
    var type: ButtonType
    
    func makeBody(configuration: Configuration) -> some View {
        
        
        configuration
            .label
            .font(.system(size: 20))
            .foregroundColor(Color.white)
            .padding()
            .background(color)
            .cornerRadius(20)
            .scaleEffect(configuration.isPressed ? 1.3 : 1.0)
            .onTapGesture {
                if (self.type == .tab) {
                    let haptic = UIImpactFeedbackGenerator(style: .light)
                    haptic.impactOccurred()
                }
            }.onLongPressGesture {
                if (self.type == .long) {
                    let haptic = UIImpactFeedbackGenerator(style: .heavy)
                    haptic.impactOccurred()
                }
            }
        
        
//        configuration.isPressed
//
//        configuration.self
    }
}

struct MyButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button {
            print("button clicked!")
        } label: {
            Text("HAHA")
        }.buttonStyle(MyButtonStyle(color: .blue, type: .tab))

    }
}
