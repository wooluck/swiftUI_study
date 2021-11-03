//
//  ContentView.swift
//  SwiftUI_WebView_tutorial_#2
//
//  Created by 우럭mac on 2021/11/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//      MyWebview(urlToLoad: "http://www.naver.com")
        
        NavigationView {
            
            HStack {
                NavigationLink(destination: MyWebview(urlToLoad: "http://www.naver.com")
                                .edgesIgnoringSafeArea(.all)
                ){
                    Text("NAVER")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                NavigationLink(destination: MyWebview(urlToLoad: "http://www.daum.net")
                                .edgesIgnoringSafeArea(.all)
                ){
                    Text("DAUM")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                NavigationLink(destination: MyWebview(urlToLoad: "http://www.google.com")
                                .edgesIgnoringSafeArea(.all)
                ){
                    Text("GOOGLE")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
