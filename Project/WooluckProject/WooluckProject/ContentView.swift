//
//  ContentView.swift
//  WooluckProject
//
//  Created by 우럭mac on 2021/11/24.
//

import SwiftUI

enum TabIndex {
    case home
    case none
    case profile
}

struct ContentView: View {
    
    @State var tabIndex: TabIndex
    
    @State var largerScale: CGFloat = 1.5
    
    @State var tabbarColor: Color = Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))
    
    @State var nonTabbarColor: Color = Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
    
    //    let l = Color(#colorLiteral)
        let bgLeftColor = Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
    
        let bgRightColor : Color = .white
        
    
    func changeIconColor(tabIndex: TabIndex) -> Color {
        switch tabIndex {
        case .home:
            return Color.green
        case .none:
            return Color.purple
        case .profile:
            return Color.blue
        default:
            return Color.green
        }
    }

    func calcCircleBgPosition(tabIndex: TabIndex, geometry: GeometryProxy) -> CGFloat {
        switch tabIndex {
        case .home:
            return -(geometry.size.width / 3)
        case .none:
            return 0
        case .profile:
            return geometry.size.width / 3
        default:
            return -(geometry.size.width / 3)
        }
    }
    
    

    
    var body: some View {
        GeometryReader { geometry in
            
            ZStack {
                LinearGradient(gradient: Gradient(colors: [bgRightColor, bgLeftColor]), startPoint: .top, endPoint: .bottom)
                
                VStack {
                    PersonProfile()
                    
                    ZStack{
                        Circle()
                            .frame(width:90, height: 90)
                            .offset(x: self.calcCircleBgPosition(tabIndex: self.tabIndex, geometry: geometry), y: 0)
                            .foregroundColor(.white)
                        
                        VStack (spacing: 0){
                            HStack (spacing: 0){
                                    Button {
                                        print("button_1_clicked")
                                        withAnimation {
                                            self.tabIndex = .home
                                        }
                                    } label: {
                                        Image(systemName: "house.fill")
                                            .font(.system(size: 25))
                                            .scaleEffect(self.tabIndex == .home ? self.largerScale : 1.0)
                                            .foregroundColor(self.tabIndex == .home ? self.tabbarColor : self.nonTabbarColor)
                                            .frame(width: geometry.size.width / 3, height: 58)
                                            .offset(y: self.tabIndex == .home ? -5 : 0)
                                    }
                                    .background(Color.white)
                                
                                    Button {
                                        print("button_2_clicked")
                                        withAnimation {
                                            self.tabIndex = .none
                                        }
                                    } label: {
                                        Image(systemName: "multiply")
                                            .font(.system(size: 25))
                                            .scaleEffect(self.tabIndex == .none ? self.largerScale : 1.0)
                                            .foregroundColor(self.tabIndex == .none ? self.tabbarColor : self.nonTabbarColor )
                                            .frame(width: geometry.size.width / 3, height:58)
                                            .offset(y: self.tabIndex == .none ? -5 : 0)
                                    }
                                    .background(Color.white)
                                
                                    Button {
                                        print("button_3_clicked")
                                        withAnimation {
                                            self.tabIndex = .profile
                                        }
                                    } label: {
                                        Image(systemName: "person.circle.fill")
                                            .font(.system(size: 25))
                                            .scaleEffect(self.tabIndex == .profile ? self.largerScale : 1.0)
                                            .foregroundColor(self.tabIndex == .profile ? self.tabbarColor : self.nonTabbarColor)
                                            .frame(width: geometry.size.width / 3, height:58)
                                            .offset(y: self.tabIndex == .profile ? -5 : 0)
                                    }
                                    .background(Color.white)
                                    
                                }
                        }
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(height:20)
                            .offset(y: 38)
                    }
                    

                    
                    
                }
                
            }.padding(.top, 30)
        }.edgesIgnoringSafeArea(.all)
        
            
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tabIndex: .home)
    }
}
