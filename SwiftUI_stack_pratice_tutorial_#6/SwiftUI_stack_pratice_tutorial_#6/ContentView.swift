//
//  ContentView.swift
//  SwiftUI_stack_pratice_tutorial_#6
//
//  Created by 우럭mac on 2021/11/05.
//

import SwiftUI

struct ContentView: View {
    
    //위 상단에 붕뜨는 칸이 네비게이션타이틀 칸인데 . 그걸 없애기 위해 하나 만듬.
    @State var isNavigationBarHidden: Bool = false
    
    var body: some View {
        
        NavigationView {
            ZStack (alignment: .bottomTrailing){
                
                VStack (alignment: .leading, spacing: 0){
                    
                    HStack {
                        
                        NavigationLink(destination: MyList(isNavigationBarHidden: self.$isNavigationBarHidden )) {
                            Image(systemName: "line.horizontal.3")
                                .font(.largeTitle)
                                .foregroundColor(Color.black)
                        }
                        
                        Spacer()
                        
                        
                        
                        NavigationLink(destination: MyProfileView(isNavigationBarHidden: self.$isNavigationBarHidden)) {
                            Image(systemName: "person.crop.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(Color.black)
                        }
//
                    }
                    .padding(20)

                    
                    Text("우럭의 할일 목록")
                        .font(.system(size: 40))
                        .fontWeight(.black)
                        .padding(.horizontal, 20)
                    
                    ScrollView { // 이걸해야 스크롤할수 있다 .
                        VStack{
                            MyProjectCard()
                            MyBasicCard()
                            MyCard(icon: "tray.fill", title: "정리하기", start: "10 AM", end: "11 PM", bgColor: Color.blue)
                            MyCard(icon: "tv.fill", title: "영상 다시보기", start: "8 AM", end: "9 AM", bgColor: Color.red)
                            MyCard(icon: "cart.fill", title: "마트 장보기", start: "10 AM", end: "11 AM", bgColor: Color.orange)
                            MyCard(icon: "gamecontroller.fill", title: "롤  한판하기", start: "2 PM", end: "3 PM", bgColor: Color.green)
                        }
                        .padding()
                        
                    }
                }
                Circle()
                    .foregroundColor(Color.yellow)
                    .frame(width: 60, height: 60)
                    .overlay(
                    Image(systemName: "plus")
                        .font(.system(size: 30))
                        .foregroundColor(Color.white)
                    )
                    .padding(10)
                    .shadow(radius: 20)
        }// Zstack
            
        //네비게이션뷰 안쪽에다가 해야됨 !
            .navigationTitle("main")
            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear {
                self.isNavigationBarHidden = true
            }
        }// NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
