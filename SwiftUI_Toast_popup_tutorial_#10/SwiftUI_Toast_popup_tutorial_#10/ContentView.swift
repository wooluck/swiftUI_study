//
//  ContentView.swift
//  SwiftUI_Toast_popup_tutorial_#10
//
//  Created by 우럭mac on 2021/11/15.
//

import SwiftUI
import ExytePopupView

struct ContentView: View {
    
    
    @State var shouldShowBottomSolidMessage : Bool  = false
    
    @State var shouldShowBottomToastMessage : Bool  = false
    
    @State var shouldShowTopSolidMessage : Bool = false
    
    @State var shouldShowTopToastMessage : Bool = false
    
    @State var shouldShowPopup : Bool = false
    
    func createBottomSolidMessage() -> some View {
        HStack (spacing: 10){
            
            Image(systemName: "book.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
            
            VStack (alignment:.leading, spacing: 0){
                Text("안내 메세지")
                    .fontWeight(.black)
                    .foregroundColor(.white)
                Text("토스트 메세지 입니다.")
                    .lineLimit(2)
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                Divider().opacity(0)
            }
//                    .background(Color.red)
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .frame(width: UIScreen.main.bounds.width)
        .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 0 : 15)
            .background(Color.purple)

    }
    
    func createBottomToastMessage() -> some View {
        HStack (alignment: .top, spacing: 10){
            
            Image("cat")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fill)
                .offset(y: 10)
                .frame(width: 60, height: 60)
                .cornerRadius(10)
            
            VStack (alignment:.leading){
                Text("내 고양이")
                    .fontWeight(.black)
                    .foregroundColor(.white)
                Text("메세지")
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                Divider().opacity(0)
            }
//                    .background(Color.red)
        }
        .padding(15)
        .frame(width: 300)
            .background(Color.green)
            .cornerRadius(20)
    }
    
    func createTopSolidMessage() -> some View {
        HStack (alignment: .center, spacing: 10){
            
            Image("rabbit_1")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fill)
                .frame(width: 60, height: 60)
                .cornerRadius(10)
            
            VStack (alignment:.leading){
                Text("개발하는 쩡우럭 메세지")
                    .fontWeight(.black)
                    .foregroundColor(.white)
                Text("안녕하세요. 오늘도 빡코딩하고 계신가요 ? \n오늘은 토스트 메세지와 팝업에 대해 알아보겠습니다 ! ")
//                    .lineLimit(2)
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                Divider().opacity(0)
            }
//                    .background(Color.red)
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .frame(width: UIScreen.main.bounds.width)
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top == 0 ? 20 : 35)
            .background(Color.blue)

    }
    
    func createTopToastMessage() -> some View {
        HStack (alignment: .center, spacing: 10){
            
            Image(systemName: "paperplane.fill")
                .font(.system(size: 25))
                .padding(.leading, 5)
                .foregroundColor(Color.white)
            
            VStack (alignment:.leading, spacing: 2){
                Text("쩡우럭의 메세지")
                    .fontWeight(.black)
                    .foregroundColor(.white)
                Text("오늘도 빡코딩하고 계신가요 ?")
                    .font(.system(size: 14))
                    .lineLimit(1)
                    .foregroundColor(Color.white)
            
//                Divider().opacity(0)
            }
            .padding(.trailing, 15)
//            .cornerRadius(25)
//                    .background(Color.red)
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .background(Color.orange)
            .cornerRadius(25)
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top == 0 ? 0 : 30)
                
    }
    
    func createPopup() -> some View {
            VStack(spacing: 10) {
                        Image("rabbit_2")
                            .resizable()
                            .aspectRatio(contentMode: ContentMode.fit)
                            .frame(width: 100, height: 100)

                        Text("개발하는 쩡우럭")
                            .foregroundColor(.white)
                            .fontWeight(.bold)

                        Text("한국에서 개발자로 살아남기!\n아자 아자 화이팅!😍👍")
                            .font(.system(size: 12))
                            .foregroundColor(Color(red: 0.9, green: 0.9, blue: 0.9))
                            .multilineTextAlignment(.center)

                        Spacer().frame(height: 10)

                        Button(action: {
                            self.shouldShowPopup = false
                        }) {
                            Text("닫기")
                                .font(.system(size: 14))
                                .foregroundColor(.black)
                                .fontWeight(.bold)
                        }
                        .frame(width: 100, height: 40)
                        .background(Color.white)
                        .cornerRadius(20.0)
                    }
            //        .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                        .padding(.horizontal, 10)
                    .frame(width: 300, height: 400)
                    .background(Color(hexcode: "8227b0"))
                    .cornerRadius(10.0)
                    .shadow(radius: 10)
        }
    
    var body: some View {
        ZStack{
            VStack (spacing: 10){
                
                Button {
                    self.shouldShowBottomSolidMessage = true
                } label: {
                    Text("바텀솔리드메세지")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.purple)
                        .cornerRadius(10)
                }
                
                Button {
                    self.shouldShowBottomToastMessage = true
                } label: {
                    Text("바텀토스트메세지")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                }

                Button {
                    self.shouldShowTopSolidMessage = true
                } label: {
                    Text("탑솔리드메세지")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                
                Button {
                    self.shouldShowTopToastMessage = true
                } label: {
                    Text("탑토스트메세지")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(10)
                }
                
                Button {
                    self.shouldShowPopup = true
                } label: {
                    Text("팝업")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color(hexcode: "8227b0"))
                        .cornerRadius(10)
                }

                
                
            } // V
        }
        .edgesIgnoringSafeArea(.all)
        // Z
        .popup(isPresented: $shouldShowBottomSolidMessage, type: .toast, position: .bottom, animation: .easeInOut, autohideIn: 2, closeOnTap: true, closeOnTapOutside: true) {
            self.createBottomSolidMessage()
        }
        
        .popup(isPresented: $shouldShowBottomToastMessage, type: .floater(verticalPadding: 20), position: .bottom, animation: .spring(), autohideIn: 2, closeOnTap: true, closeOnTapOutside: true) {
            self.createBottomToastMessage()
    }
        .popup(isPresented: $shouldShowTopSolidMessage, type: .toast, position: .top, animation: .easeInOut, autohideIn: 2, closeOnTap: true, closeOnTapOutside: true) {
            self.createTopSolidMessage()
    }
        .popup(isPresented: $shouldShowTopToastMessage, type: .floater(verticalPadding: 20), position: .top, animation: .easeInOut, autohideIn: 2, closeOnTap: true, closeOnTapOutside: true) {
            self.createTopToastMessage()
    }
        .popup(isPresented: $shouldShowPopup, type: .default, position: .top, animation: .easeInOut, autohideIn: 2, closeOnTap: false, closeOnTapOutside: false) {
            self.createPopup()
}
    
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

}
