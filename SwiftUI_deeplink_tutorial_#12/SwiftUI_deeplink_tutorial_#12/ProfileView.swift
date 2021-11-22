//
//  ProfileView.swift
//  SwiftUI_deeplink_tutorial_#12
//
//  Created by 우럭mac on 2021/11/18.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        Rectangle()
            .foregroundColor(Color.purple)
            .frame(width: 100, height: 100)
            .cornerRadius(15)
            .overlay(
                Text("프로필")
                    .font(.system(size: 23))
                    .fontWeight(.black)
                    .foregroundColor(.white)
                
            )
    }
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
