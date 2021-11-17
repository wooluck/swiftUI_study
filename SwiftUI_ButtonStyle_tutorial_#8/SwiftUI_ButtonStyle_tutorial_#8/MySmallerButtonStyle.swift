//
//  MySmallerButtonStyle.swift
//  SwiftUI_ButtonStyle_tutorial_#8
//
//  Created by 우럭mac on 2021/11/11.
//

import SwiftUI

struct MySmallerButtonStyle : ButtonStyle {
    
    var color: Color
    
    
    func makeBody(configuration: Configuration) -> some View {
        
        
        configuration
            .label
            .font(.system(size: 20))
            .foregroundColor(Color.white)
            .padding()
            .background(color)
            .cornerRadius(20)
            .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
            .opacity(configuration.isPressed ? 0.5 : 1.0)
        
        
//        configuration.isPressed
//
//        configuration.self
    }
}

struct MySmallerButtonStyle_Previews: PreviewProvider {

        static var previews: some View {
            
            Button {
                print("button clicked!")
            } label: {
                Text("HAHA")
            }.buttonStyle(MySmallerButtonStyle(color: .blue))
        }
    }
