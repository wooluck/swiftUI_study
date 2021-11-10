//
//  MyVBasicCard.swift
//  SwiftUI_stack_pratice_tutorial_#6
//
//  Created by 우럭mac on 2021/11/05.
//

import SwiftUI

struct MyBasicCard: View {
    
    var body: some View {
    
        HStack (spacing: 20){ // spacing도 잘써먹자.
            Image(systemName: "flag.fill")
                .font(.system(size: 40)) // 그림도 font사이즈로 변경가능
                .foregroundColor(Color.white)
                
            VStack(alignment: .leading, spacing: 0){
                Divider()
                    .opacity(0)
//                Rectangle()
//                    .frame(height: 0)
                Text("Wake up")
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(Color.white)
                    
                Spacer()
                    .frame(height: 5)
                
                Text("8 AM")
                    .foregroundColor(Color.white)
                
            }
            
            
        } //hstack
        .padding(20)
        .background(Color.purple)
        .cornerRadius(20)
        
    }
}

struct MyBasicCard_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicCard()
    }
}
