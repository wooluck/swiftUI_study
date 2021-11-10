//
//  MyCustomTabView.swift
//  SwiftUI_stack_pratice_tutorial_#6
//
//  Created by 우럭mac on 2021/11/10.
//

import SwiftUI

enum TabIndex {
    case home
    case cart
    case profile
}

struct MyCustomTabView: View {
    
    @State var tabIndex: TabIndex
    
    @State var largerScale: CGFloat = 1.4
    
    func changeMyView(tabIndex: TabIndex) -> MyView { // 매개변수로 tabIndex를 받는다 . 반환하는 값은 MyView
        switch tabIndex {
        case .home:
            return MyView(title: "홈", bgColor: Color.green)
        case .cart:
            return MyView(title: "장바구니", bgColor: Color.purple)
        case .profile:
            return MyView(title: "프로필", bgColor: Color.blue)
        default:
            return MyView(title: "홈", bgColor: Color.green)
        }
    }
    
    func changeIconColor(tabIndex: TabIndex) -> Color {
        switch tabIndex {
        case .home:
            return Color.green
        case .cart:
            return Color.purple
        case .profile:
            return Color.blue
        default:
            return Color.green
        }
    }
    
    func calcCircleBgPosition(tabIndex: TabIndex, geometry: GeometryProxy) -> CGFloat{
        switch tabIndex {
        case .home:
            return -(geometry.size.width / 3)
        case .cart:
            return 0
        case .profile:
            return (geometry.size.width / 3)
        default:
            return -(geometry.size.width / 3)
        }
    }
    
    var body: some View {
//        Text("my")
        
        GeometryReader { geometry in
            
            ZStack (alignment: .bottom){
                self.changeMyView(tabIndex: self.tabIndex)
                
                Circle()
                    .frame(width: 90, height: 90)
                    .offset(x: self.calcCircleBgPosition(tabIndex: self.tabIndex, geometry: geometry), y: 15)
                    .foregroundColor(Color.white)
                    
                VStack (spacing: 0){
                    HStack (spacing: 0){ // 기본적으로 스페이싱이 들어가있다 .
                        Button {
                            print("home click")
                            
                            withAnimation {
                                self.tabIndex = .home
                            }
                            
                        } label: {
                            Image(systemName: "house.fill")
                                .font(.system(size: 25))
                                .scaleEffect(self.tabIndex == .home ? self.largerScale : 1.0)
                                .foregroundColor(self.tabIndex == .home ? self.changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                                .frame(width: geometry.size.width / 3, height: 50)
                                .offset(y: self.tabIndex == .home ? -10 : 0)
                        }
                        .background(Color.white)
                        
                        Button {
                            print("cart click")
                            
                            withAnimation {
                                self.tabIndex = .cart
                            }
                            
                            
                        } label: {
                            Image(systemName: "cart.fill")
                                .font(.system(size: 25))
                                .scaleEffect(self.tabIndex == .cart ? self.largerScale : 1.0)
                                .foregroundColor(self.tabIndex == .cart ? self.changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                                .frame(width: geometry.size.width / 3, height: 50)
                                .offset(y: self.tabIndex == .cart ? -10 : 0)
                        }
                        .background(Color.white)
                        
                        Button {
                            print("profile click")
                            
                            withAnimation {
                                self.tabIndex = .profile
                            }
                            
                        } label: {
                            Image(systemName: "person.circle.fill")
                                .font(.system(size: 25))
                                .scaleEffect(self.tabIndex == .profile ? self.largerScale : 1.0)
                                .foregroundColor(self.tabIndex == .profile ? self.changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                                .frame(width: geometry.size.width / 3, height: 50)
                                .offset(y: self.tabIndex == .profile ? -10 : 0)
                        }
                        .background(Color.white)

                    }
                } // HStack
                Rectangle()
                    .foregroundColor(Color.white)
                    .frame(height: UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 0 : 11)
                
            }
            
        }.edgesIgnoringSafeArea(.all)
        
    }
}

struct MyCustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyCustomTabView(tabIndex: .home)
    }
}
