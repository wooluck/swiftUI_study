//
//  MyCard.swift
//  SwiftUI_stack_pratice_tutorial_#6
//
//  Created by 우럭mac on 2021/11/08.
//

import SwiftUI


struct MyCard: View {
    
    //맴버변수를 설정해서 넣으면된다 .
    var icon: String
    var title: String
    var start: String
    var end: String
    var bgColor: Color
    
    var body: some View {
    
        HStack (spacing: 20){ // spacing도 잘써먹자.
            Image(systemName: icon)
                .font(.system(size: 40)) // 그림도 font사이즈로 변경가능
                .foregroundColor(Color.white)
                
            VStack(alignment: .leading, spacing: 0){
                Divider()
                    .opacity(0)
//                Rectangle()
//                    .frame(height: 0)
                Text(title)
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(Color.white)
                    
                Spacer()
                    .frame(height: 5)
                
                Text("\(start) - \(end)")
                    .foregroundColor(Color.white)
                
            }
            
            
        } //hstack
        .padding(20)
        .background(bgColor)
        .cornerRadius(20)
        
    }
}

struct MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard(icon: "book.fill", title: "Reading a book", start: "1 PM", end: "3 PM", bgColor: Color.green)
    }
}
