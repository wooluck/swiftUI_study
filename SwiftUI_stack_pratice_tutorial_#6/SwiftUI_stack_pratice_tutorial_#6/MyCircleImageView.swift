//
//  MyCircleImageView.swift
//  SwiftUI_stack_pratice_tutorial_#6
//
//  Created by 우럭mac on 2021/11/09.
//

import SwiftUI

struct MyCircleImageView: View {
    var imageString: String
        
        var body: some View {
            Image(imageString)
            .resizable()
                .scaledToFill()
                .frame(width: 250, height: 250)
                .padding(.trailing, 10)
                .clipShape(Circle())
                .shadow(color: .gray, radius: 10, x: 0, y: 10)
                .overlay(
                    
                    Circle().strokeBorder(Color.yellow, lineWidth: 15)
                    // stroke -> 선을 기준으로 위아래로 선이그어짐
                    // strokeBorder -> 선 안쪽으로 선이그어짐 
                )
        }
}

struct MyCircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        MyCircleImageView(imageString: "me")
    }
}
