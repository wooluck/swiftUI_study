//
//  MyList.swift
//  SwiftUI_stack_pratice_tutorial_#6
//
//  Created by 우럭mac on 2021/11/08.
//

import SwiftUI

struct MyList: View {
    
    @Binding var isNavigationBarHidden: Bool
    
    // 리스트의 선이 사라지게 한다.
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)) {
        if #available(IOS 14.0, *) {
            
        }else {
            UITableView.appearance().tableFooterView = UIView()
        }
        
        UITableView.appearance().separatorStyle = .none
        
        // Binding = 여긴 외부에서 넘어온놈
        _isNavigationBarHidden = isNavigationBarHidden
    }
    
    var body: some View {
        
//        List {
//
//            Text("마이리스트")
//            Text("마이리스트")
//            Text("마이리스트")
//            Text("마이리스트")
//            Text("마이리스트")
//
//        }
        
//        List {
//            ForEach(1...10, id: \.self) { // 아이디를 꼭 사용해야한다
//                Text("마이리스트 \($0)")
//            }
//        }
        
        List {
            
            Section(
                header:
                    Text("오늘 할 일!")
                    .font(.headline)
                    .foregroundColor(Color.black)
                
                ,footer: Text("fooer")
            ){
                ForEach(1...3, id: \.self) { itemIndex in
    //                Text("마이리스트 \(itemIndex)")
                    MyCard(icon: "book.fill", title: "Reading a book \(itemIndex)", start: "1 PM", end: "3 PM", bgColor: Color.green)
                    
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            
            Section(
                header:
                    Text("내일 할 일!")
                    .font(.headline)
                    .foregroundColor(Color.black)
                
            ){
                ForEach(1...20, id: \.self) { itemIndex in
    //                Text("마이리스트 \(itemIndex)")
                    MyCard(icon: "book.fill", title: "Reading a book \(itemIndex)", start: "1 PM", end: "3 PM", bgColor: Color.blue)
                    
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            .listRowBackground(Color.yellow)
            
           
        }
//        .listStyle(PlainListStyle())
        .listStyle(GroupedListStyle())
        .navigationBarTitle("내 목록")
        
//        .navigationBarHidden(self.isNavigationBarHidden)
        .onAppear {
            self.isNavigationBarHidden = false
        }
        
    } // NavigaionView
}
struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
