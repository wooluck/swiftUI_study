//
//  ContentView.swift
//  SwiftUI_lazyVGrid_tutorial_#14
//
//  Created by 우럭mac on 2021/11/23.
//

import SwiftUI

struct MyModel : Identifiable {
    let id = UUID()
    let title: String
    let content: String
}

extension MyModel { //20개의 더미데이터 생성
    static var dummyDataArray: [MyModel] {
        (1...20).map{ (number: Int) in // map = for의 진화단계라고 생각하자
            MyModel(title: "타이틀: \(number)", content: "컨텐트 : \(number)")
        }
    }
}

struct ContentView: View {
    
//    let myDataArray = Array(1...2000).map { (number : Int) in
//        return "\(number) 번"
//    }
    var dummyDataArray = MyModel.dummyDataArray
    
    var body: some View {
        // 스크롤뷰로 감싸서 스크롤 가능하도록 설정
        ScrollView {
//            Picker()
            // 레이지 버티칼 그리드 뷰
            // column 은 호리젠탈 아이템 레이아웃을 설정 하는 부분
            // 그리드 아이템 옵션 3개
            // .fixed 고정
            // .adaptive 여러개 채우기 - 계산해서 분할로 채우기
            // .flexible 하나만 채우기 - 계산해서 분할로 채우기
            LazyVGrid(columns: [
                GridItem(.fixed(50)),
                GridItem(.adaptive(minimum: 50)),
                GridItem(.flexible(minimum: 50)),
            ], spacing: 10, content:  {
                ForEach(dummyDataArray, content: {(dataItem: MyModel) in
                    Rectangle().foregroundColor(Color.blue)
                        .frame(height: 120)
                        .overlay (
                            Text("\(dataItem.title)")
                        )
                }) //ForEach
            
            } //LazyVGrid
            )
        } //ScrollView
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
