//
//  MyGeometryReader.swift
//  SwiftUI_stack_pratice_tutorial_#6
//
//  Created by 우럭mac on 2021/11/09.
//

import SwiftUI

struct MyGeometryReader: View {
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack (spacing: 0){
                Text("1")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: geometry.size.width / 5, height: geometry.size.height / 3)
                    .background(Color.red)
                    .foregroundColor(.white)
                Text("2")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: geometry.size.width / 5,
                           height: geometry.size.height / 3)
                    .background(Color.blue)
                    .foregroundColor(.white)
                Text("3")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: geometry.size.width / 5,
                           height: geometry.size.height / 3)
                    .background(Color.green)
                    .foregroundColor(.white)
//                Text("4")
//                    .font(.largeTitle)
//                    .fontWeight(.black)
//                    .frame(width: 50)
//                    .background(Color.purple)
//                    .foregroundColor(.white)
            }
            .background(Color.yellow)
            .position(x: geometry.frame(in: .local).midX, y: geometry.frame(in: .local).midY)
            
        }.background(Color.yellow)
            
        
         
        
    }
}

struct MyGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReader()
    }
}
