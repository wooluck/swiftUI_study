//
//  SegmentLayoutView.swift
//  SwiftUI_lazyVGrid_tutorial_#14
//
//  Created by 우럭mac on 2021/11/23.
//

import SwiftUI

enum LayoutType: CaseIterable{ // 반복문 해주려면 이거해야된다고 함.
    case table, grid, triple
}

//extension LayoutType {
//    // 레이아웃 타입에 대한 컬럼이 자동으로 설정되도록 한다.
//    var columns : [GridItem] {
//        switch self {
//        case .table :
//            return [
//                // flexible 하나로 한줄로 표현
//                GridItem(.flexible())
//            ]
//        }
//    }
//}

struct SegmentLayoutView : View {
    
    @State var selectedLayoutType: LayoutType = .table
    
    var body: some View {
        VStack {
            
            // 피커
            Picker(selection: $selectedLayoutType, label: Text("레이아웃 타입"), content: {
                ForEach(LayoutType.allCases, id:\.self, content: { layoutType in
                    switch layoutType {
                    case .table :
                        Image(systemName: "list.dash")
                    case .grid :
                        Image(systemName: "square.grid.2x2.fill")
                    case .triple :
                        Image(systemName: "circle.grid.3x3.fill")
                    }
                })
            })
                .pickerStyle(SegmentedPickerStyle())
            // 내용물
            ScrollView {
                LazyVGrid(columns: [GridItem(.fixed(20))], content: { Text("aa")
                })
            }
        }
    }
}

struct SegmentLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentLayoutView()
    }
}
