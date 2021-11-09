//
//  MyHstack.swift
//  SwiftUI_Stacks_tutorial_#5
//
//  Created by 우럭mac on 2021/11/03.
//

import SwiftUI

struct MyHstack: View {
    var body: some View {
        
        HStack(alignment: .center) {
            
//            Divider()
            
//            Rectangle()
//                .frame(width: 100)
//                .foregroundColor(Color.red)
            
//            Rectangle()
//                .frame(width: 100, height: 100)
//                .foregroundColor(Color.red)
            
            Image(systemName: "flame.fill")
                .foregroundColor(Color.white)
                .font(.system(size: 70))
            
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.yellow)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.blue)
        }
        .padding()
        .background(Color.green)
    }
}

struct MyHstack_Previews: PreviewProvider {
    static var previews: some View {
        MyHstack()
    }
}
