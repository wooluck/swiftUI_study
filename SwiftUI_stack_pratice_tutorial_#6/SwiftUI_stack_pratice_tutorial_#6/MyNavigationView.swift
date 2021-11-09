//
//  MyNavigationView.swift
//  SwiftUI_stack_pratice_tutorial_#6
//
//  Created by 우럭mac on 2021/11/08.
//

import SwiftUI

struct MyNavigationView : View {
    var body: some View {
        
        NavigationView {
//            Text("MyNavigationView")
            
            MyList()
//                 .navigationTitle("안녕하세요!")
//                .navigationBarTitle("안녕하세요!", displayMode: .automatic) //large 랑 비슷
                .navigationBarItems(leading: Button(action: {
                    print("haha")
                }){
                    Text("호호")
                }
                , trailing:
                                        NavigationLink(destination: {
                    Text("넘어온 화면입니다 .")
                }, label: {
//                    Text("네비게이션")
                    Image(systemName: "bookmark.fill")
                        .font(.system(size: 25))
                        .foregroundColor(Color.black)
                })
                )
            
                
            
        }
       
    }
}

struct MyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationView()
    }
}
