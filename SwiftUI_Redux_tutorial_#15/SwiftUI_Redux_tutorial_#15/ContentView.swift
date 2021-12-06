//
//  ContentView.swift
//  SwiftUI_Redux_tutorial_#15
//
//  Created by 우럭mac on 2021/11/29.
//

import SwiftUI

struct ContentView: View {
    
    // 스토어 생성
    let store = AppStore(state: AppState.init(currentDice: "1"), reducer: appReducer(_:_:))
    
    var body: some View {
        // 서브뷰에 옵저버블 오브젝트를 연결한다.
        DiceView().environmentObject(store)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
