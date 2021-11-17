//
//  ContentView.swift
//  SwiftUI_ButtonStyle_tutorial_#8
//
//  Created by 우럭mac on 2021/11/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (spacing: 30){
            Button {
                print("Button")
            } label: {
                Text("Tab")
                    .fontWeight(.bold)
            }.buttonStyle(MyButtonStyle(color: Color.blue, type: .tab))
            
            Button {
                print("Button")
            } label: {
                Text("long_click")
                    .fontWeight(.bold)
            }.buttonStyle(MyButtonStyle(color: Color.green, type: .long))
            
            Button {
                print("Button")
            } label: {
                Text("rotation_click")
                    .fontWeight(.bold)
            }.buttonStyle(MyRotateButtonStyle(color: Color.pink))

            Button {
                print("Button")
            } label: {
                Text("smaller_click")
                    .fontWeight(.bold)
            }.buttonStyle(MySmallerButtonStyle(color: Color.pink))
            
            Button {
                print("Button")
            } label: {
                Text("blur_click")
                    .fontWeight(.bold)
            }.buttonStyle(MyBlurButtonStyle(color: Color.black))

            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
