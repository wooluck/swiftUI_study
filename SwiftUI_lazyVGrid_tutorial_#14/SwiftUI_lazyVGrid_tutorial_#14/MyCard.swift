//
//  MyCard.swift
//  SwiftUI_lazyVGrid_tutorial_#14
//
//  Created by 우럭mac on 2021/11/26.
//

import Foundation
import SwiftUI

struct MyCard : View {
    
    var icon : String
    var title : String
    var start : String
    var end : String
    var bgColor : Color
    
    var body: some View{
        HStack(spacing: 20){
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundColor(Color.white)
            VStack(alignment: .leading, spacing: 0){
                Divider().opacity(0)
//                Rectangle().frame(height: 0)
                Text(title)
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(Color.white)
                Spacer().frame(height: 5)
                Text("\(start) - \(end)")
                    .foregroundColor(Color.white)
            }
        }
        .padding(20)
        .background(bgColor)
        .cornerRadius(20)
    }
}
