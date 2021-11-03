//
//  ContentView.swift
//  SwiftUI_text_tutorial_#3
//
//  Created by 우럭mac on 2021/11/03.
//

import SwiftUI

struct ContentView: View {
    
    // 날자를 보여주고 싶을때 DateFormatter
    // 내가 바꾸고 싶은 형식으로 date를 하겠다 ! 할때 만드는것.
    static let dateFormat: DateFormatter = {
        let formatter = DateFormatter() // DateFormatter 인스턴스를 가져옴
        formatter.dateFormat = "YYYY년 M월 d일"
        return formatter
    }() // 선언과 동시에 정의가 된것.
    
    var today = Date() //오늘의 날짜
    
    var trueOrFalse: Bool = false
    
    var number: Int = 123
    
    var body: some View {
        
        VStack {
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ")
                .tracking(1) //글자와 글자사이에 간격
            // font(. 로하면 애플에서 정해놓은 글씨 font(.system(. 은 다른글씨)
                .font(.system(.body, design: .rounded))
                .fontWeight(.medium)
                .multilineTextAlignment(.center) // 글자 정렬
                .lineLimit(nil)
                .lineSpacing(10) // 글자사이의 간격
                .truncationMode(.head) // 앞에 ... 붙는 효과
                .shadow(color: Color.red, radius: 3, x: 0, y: 10)
            
            
                .padding(.all, 20)
                .background(Color.yellow)
                .cornerRadius(10)
                .padding() // 글자와 글자사이에 간격두고싶으면 패딩을 또! 넣기
                
                .background(Color.green)
                .cornerRadius(20)
                
                .padding()
            
            
            Text("Hi~")
                .background(Color.gray)
                .foregroundColor(Color.white)
            
            Text("오늘의 날짜입니다 : \(today, formatter: ContentView.dateFormat)")
            
            Text("참 혹은 거짓 : \(String(trueOrFalse))")
            
            Text("숫자입니다 : \(number)")
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
