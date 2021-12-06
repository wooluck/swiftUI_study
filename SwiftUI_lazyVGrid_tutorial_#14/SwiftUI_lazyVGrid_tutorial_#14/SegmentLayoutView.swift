//
//  SegmentLayoutView.swift
//  SwiftUI_lazyVGrid_tutorial_#14
//
//  Created by 우럭mac on 2021/11/23.
//

import SwiftUI

enum LayoutType: CaseIterable{ // 반복문 해주려면 이거해야된다고 함.
    case table, grid, mutiple
}

extension LayoutType {
    // 레이아웃 타입에 대한 컬럼이 자동으로 설정되도록 한다.
    var columns : [GridItem] {
        switch self {
        case .table :
            return [
                // flexible 하나로 한줄로 표현
                GridItem(.flexible())
            ]
        case .grid :
            return [
                //flexible 두개를 넣어서 두개 아이템 들어가겜 함
                GridItem(.flexible()),
                GridItem(.flexible())
            ]
            
        case .mutiple :
            return [
                // adaptive 를 통해 크키 닿는데 까지. 아이템 여러개 넣기
                GridItem(.adaptive(minimum: 100))
            ]
            
        }
    }
}

struct SegmentLayoutView : View {
    
    // 여기선 왜 바인딩 안쓰지 ..?
    var dummyDatas = MyModel.dummyDataArray
    
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
                    case .mutiple :
                        Image(systemName: "circle.grid.3x3.fill")
                    }
                })
            })
                .frame(width: 250)
                .pickerStyle(SegmentedPickerStyle())
            // 내용물
            ScrollView {
                LazyVGrid(columns: selectedLayoutType.columns, content: {
                    ForEach(dummyDatas) { dataItem in
                        
                        switch selectedLayoutType {
                        case .table:
                            MyCard(icon: "book.fill", title: "책읽기", start: "1 PM", end: "3 PM", bgColor: Color.green)
                            
                        case .grid:
                            RoundedRectangle(cornerRadius: 25)
                                .foregroundColor(Color.orange)
                                .frame(height: 200)
                                .overlay {
                                    VStack (spacing: 2){
                                        Circle()
                                            .frame(height: 100)
                                            .foregroundColor(.yellow)
                                        Spacer().frame(height: 10)
                                        Text("\(dataItem.title)")
                                            .font(.system(size: 20))
                                            .fontWeight(.bold)
                                        Text("\(dataItem.content)")
                                    }
                                }
                            
                        case .mutiple:
                            Rectangle()
                                .foregroundColor(.blue)
                                .frame(height: 100)
                        }
                        
                        
                    }
                    
                })
                    .animation(.easeInOut)
                    .padding(.horizontal, 10)
            }
        }
    }
}

struct SegmentLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentLayoutView()
    }
}
