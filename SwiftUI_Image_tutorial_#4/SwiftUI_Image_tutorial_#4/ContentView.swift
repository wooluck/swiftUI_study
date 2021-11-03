//
//  ContentView.swift
//  SwiftUI_Image_tutorial_#4
//
//  Created by 우럭mac on 2021/11/03.
//

import SwiftUI

// ContentView = MainViewController 라고 생각하면 편함 .
struct ContentView: View {
    var body: some View {
        
        NavigationView {
            VStack {
                
                Image("myImage")
                    .frame(height: 10)
                    .offset(y: -1300)
                
                CircleImageView()
                
                HStack {
                    NavigationLink(destination: MyWebview(urlToLoad: "https://github.com/wooluck")
                                    .edgesIgnoringSafeArea(.all)
                    ) {
                       Text("우럭의 깃허브")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(20)
                    }
                    NavigationLink(destination: MyWebview(urlToLoad: "https://open.kakao.com/o/sjwZigld")
                                    .edgesIgnoringSafeArea(.all)
                    ) {
                       Text("우럭의 OpenTalk")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(20)
                }
            }// Hstack
                .padding(50)
                
                Spacer()
                
        }
        
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
