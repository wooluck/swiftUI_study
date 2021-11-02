//
//  ContentView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 우럭mac on 2021/11/01.
//

import SwiftUI

struct ContentView: View {
    
    //@State 값의 변화를 감지 -> 뷰에 적용 ( 밑에토글에서 올라오고 다시 그려내려감)
    //private = 이 안에서만 사용하겠다.
    @State private var isActivated: Bool = false
    
    // 몸체
    var body: some View {
        
        NavigationView {
            VStack {
                HStack{
                 MyVstackView(isActivated: $isActivated)
                 MyVstackView(isActivated: $isActivated)
                 MyVstackView(isActivated: $isActivated)// 자동으로 찾아서 간다.
              
                } // HStack
                .padding(isActivated ? 50.0 : 10.0)
                // isActivated 가 true 라면? false 라면?
                .background(isActivated ? Color.yellow : Color.black)
                // 탭 제스쳐 추가
                .onTapGesture {
                    print("HStack 이 클릭되었다.")
                    
                    // 애니메이션과 함께
                    withAnimation {
                        // toggle() true 이면 false로 false 이면 true로
                        self.isActivated.toggle() // self는 ContentView의 ~ 라는뜻
                    } //withAnimation
                   
                } //onTapGesture
                
                // Navigation Button (Link)
                NavigationLink (
                destination: MyTextView(isActivated: $isActivated)){ //destination 자체가 View
                    Text("네비게이션")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                }
                .padding(.top, 50)
            }
           

            
        } //NavigationView
       
    } //View
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
