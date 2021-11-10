//
//  MyGeometryReaderVStack.swift
//  SwiftUI_stack_pratice_tutorial_#6
//
//  Created by 우럭mac on 2021/11/09.
//

import SwiftUI

enum Index { // Index 타입
    case one, two, three
}

struct MyGeometryReaderVStack: View {
    
    // 변수를 넣을때.@State 사용해야됨
    @State var index: Index = .one // 처음에 디폴트값을 원으로 .
    
    
    // 파라미터로 들어오는게 GeometryProxy 를 받고 내뱉는게 CGPoint가 필요하다
    // 클로져 안에서 매개변수를 받는건 proxy 겠죠 리턴 CGpoint를 넣어주는 방식으로!
    // -> 지오메트리 프록시를 매개변수로 가지고 CGPoint 를 반환하는 클로져
    let centerPosition : (GeometryProxy) -> CGPoint = { proxy in
        return CGPoint(x: proxy.frame(in: .local).midX,
                       y: proxy.frame(in: .local).midY)
    }
    
    var body: some View{
        
        GeometryReader { proxy in // 값설정 안하려면 _언더바 하면됨.
            VStack (spacing: 0){
                
                Button  { // 버튼이 클릭되었을때 로직
                    print("1 click")
                    
                    // 자연스러운 에니메이션 만드는 코드
                    withAnimation {
                        self.index = .one
                    }
                    
                } label: { // 버튼의 생김새
                    Text("1")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 100, height: proxy.size.height / 3)
                        .padding(.horizontal, self.index == .one ? 50 : 0)
                        .background(Color.red)
                        .foregroundColor(.white)
                }

                Button  { // 버튼이 클릭되었을때 로직
                    print("2 click")
                    withAnimation {
                        self.index = .two
                    }
                    
                } label: { // 버튼의 생김새
                    Text("2")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 100, height: proxy.size.height / 3)
                        .padding(.horizontal, self.index == .two ? 50 : 0)
                        .background(Color.blue)
                        .foregroundColor(.white)
                }
                
                Button  { // 버튼이 클릭되었을때 로직
                    print("3 click")
                    withAnimation {
                        self.index = .three
                    }
                    
                } label: { // 버튼의 생김새
                    Text("3")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 100, height: proxy.size.height / 3)
                        .padding(.horizontal, self.index == .three ? 50 : 1)
                        .background(Color.green)
                        .foregroundColor(.white)
                }
            }
//            .position(x: geometry.frame(in: .local).midX, y: geometry.frame(in: .local).midY)
            .position(centerPosition(proxy))
        }
        .background(Color.yellow)
        .edgesIgnoringSafeArea(.all
        )
        
    }
}
struct MyGeometryReaderVStack_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReaderVStack()
    }
}
