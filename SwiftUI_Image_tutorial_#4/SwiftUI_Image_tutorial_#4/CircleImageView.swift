//
//  CircleImageView.swift
//  SwiftUI_Image_tutorial_#4
//
//  Created by 우럭mac on 2021/11/03.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
//        Image(systemName: "flame.fill")
//            .font(.system(size: 200))
//            .foregroundColor(Color.yellow)
//            .shadow(color: .gray, radius: 2, x: 10, y: 10)
        
        Image("myImage")
            .resizable() // 사진 크기가 너무커서 맞출때 사용
            .scaledToFill() //aspectRatio 랑 같은것.
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .shadow(color: Color.gray, radius: 10, x: 5, y: 10)
        
            .overlay(
                Circle()
                    .foregroundColor(Color.black)
                    .opacity(0.7))
            .overlay(
                Circle()
                    .stroke(Color.red, lineWidth: 10)
                    .padding()) //stroke : 윤관선
        
            .overlay(
                Circle()
                    .stroke(Color.yellow, lineWidth: 10)
                    .padding(30)) //stroke : 윤관선
            .overlay(
                Circle()
                    .stroke(Color.blue, lineWidth: 10))
            .overlay(
            Text("HI")
                .foregroundColor(Color.white)
                .font(.system(size: 50))
                .fontWeight(.bold)
            )
                         //stroke : 윤관선
//            .aspectRatio(contentMode: .fill) // 일그러지지않고 비율에 맞게.

//            .clipped() // 딱 크기만큼 잘라내기 !
//            .edgesIgnoringSafeArea(.all)
                
        
    }
}


struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
