//
//  MyProfileView.swift
//  SwiftUI_stack_pratice_tutorial_#6
//
//  Created by 우럭mac on 2021/11/08.
//

import SwiftUI

struct MyProfileView: View {
    
    @Binding var isNavigationBarHidden: Bool
    
    // 리스트의 선이 사라지게 한다.
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)) {
        // List 가 들어갈때 선 색을 없앨때 쓰는거임 . 14.0 요거
//        if #available(IOS 14.0, *) {
//
//        }else {
//            UITableView.appearance().tableFooterView = UIView()
//        }
//
//        UITableView.appearance().separatorStyle = .none
        
        // Binding = 여긴 외부에서 넘어온놈
        _isNavigationBarHidden = isNavigationBarHidden
    }
    
    var body: some View{
            
        
    //        NavigationView{ 넘어올때부터 네비게이션뷰로 넘어와서 굳이 또 할필요가 없다 .
                ScrollView{
                        VStack{
                            
                            MyCircleImageView(imageString: "me")
                            .padding(.vertical, 20)
                        
                            Text("개발하는 우럭")
                                .font(.system(size: 30))
                                .fontWeight(.black)
                            
                            Spacer().frame(height: 20)
                            
                            Text("열심히 공부 하도록!")
                                .font(.system(size: 25))
                                .fontWeight(.black)
                            
                            HStack{
                                
                                    Text("우럭 깃허브 가기")
                                        .font(.system(size: 20))
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .padding()
                                        .background(Color.red)
                                        .cornerRadius(20)
                                
                                    Text("오픈깨톡방 가기")
                                        .font(.system(size: 20))
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .padding()
                                        .background(Color.orange)
                                        .cornerRadius(20)
                                
                            } // Hstack
                            .padding(20)
                            Spacer()
                            
                        }// Vstack
                    } // ScrollView
                
                    .navigationBarTitle("내 프로필")
                    .navigationBarItems(trailing:
                                            NavigationLink(destination: {
                        Text("설정화면입니다")
                            .font(.largeTitle)
                            .fontWeight(.black)
                    }, label: {
                        Image(systemName: "gear")
                            .font(.largeTitle)
                            .foregroundColor(Color.black)
                    }))
                    .onAppear {
                        self.isNavigationBarHidden = false
                    }
//                    .navigationBarItems(trailing:
//                        NavigationLink(destination:
//                            Text("설정화면입니다.")
//                                .font(.largeTitle)
//                                .fontWeight(.black)
//                        ){
//                           Image(systemName: "gear")
//                            .font(.largeTitle)
//                            .foregroundColor(Color.black)
//                        }
//                    )
    //        }
            
                
       
        } // View
}

struct MyProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileView()
    }
}
