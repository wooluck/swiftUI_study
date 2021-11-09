//
//  MyProjectCard.swift
//  SwiftUI_stack_pratice_tutorial_#6
//
//  Created by 우럭mac on 2021/11/05.
//

import SwiftUI

struct MyProjectCard: View { // struct 고정.
    
    // 알림(팝업)창 띄우기
    @State var shouldShowAlert: Bool = false
    
    var body: some View {
        VStack (alignment: .leading, spacing: 0){ // spacing도 잘써먹자.
            Rectangle()
                .frame(height:0)
            Text("우럭의 취업 프로젝트")
                .font(.system(size: 23))
                .fontWeight(.black)
                .padding(.bottom, 5)
            Text("언젠가 취업")
                .foregroundColor(.secondary)
            Spacer().frame(height: 20)
            HStack {
                Image("rabbit_1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(lineWidth: 5) // 원 주변 선만들기
                    )
                Image("rabbit_2")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Image("rabbit_3")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                Spacer()
                
                // button making
                Button(action: {
                    print("확인 버튼이 클릭되었다.")
                    
                    self.shouldShowAlert = true
                    
                }){ // 버튼의 생김새
                    Text("알림")
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .frame(width: 80)
                        .background(Color.blue)
                        .cornerRadius(20)
                }
                .alert(isPresented: $shouldShowAlert){
                    Alert(title: Text("알림창입니다 !"))
                }
                
                
                    
            }
        } //vstack
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(20)
    }
}


struct MyProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectCard()
    }
}
