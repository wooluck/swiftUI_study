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

struct ContentView: View {
    
    let bgLeftColor = Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
    let bgRightColor : Color = .white
    var body: some View {
        GeometryReader { geometry in
            
            ZStack {
                LinearGradient(gradient: Gradient(colors: [bgLeftColor, bgRightColor]), startPoint: .top, endPoint: .bottom)
                
                VStack {
                    PersonProfile()
                    
                    Circle()
                        .frame(width:90, height: 90)
                        .foregroundColor(.white)
                    
                }
                
            }
        }.edgesIgnoringSafeArea(.all)
        
            
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
