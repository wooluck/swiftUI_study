//
//  AppState.swift
//  SwiftUI_Redux_tutorial_#15
//
//  Created by 우럭mac on 2021/11/29.
//

import SwiftUI

// 앱의 상태 즉 데이터 -

struct AppState {
    var currentDice: String = ""{
        didSet{
            print("currentDice : \(currentDice)", #fileID, #function)
        }
    }
}

//struct AppState_Previews: PreviewProvider {
//    static var previews: some View {
//        AppState()
//    }
//}
