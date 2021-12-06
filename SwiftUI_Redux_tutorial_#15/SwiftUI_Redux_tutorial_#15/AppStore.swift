//
//  AppStore.swift
//  SwiftUI_Redux_tutorial_#15
//
//  Created by 우럭mac on 2021/11/29.
//

import SwiftUI

// 앱스토어는 앱 상태와 앱 액션을 가지고 있다.
// 앱의 상태를 지니고 있기 위해 앱 스토어를 만들어 준다.
// 그리고 읽기 전용
typealias AppStore = Store<AppState, AppAction>

// ObservableObject 앱 상태를 가지고 있는 옵저버블 오브젝트 스토어
//상속을 받지 못하도록 final !
final class Store<State, Action>: ObservableObject {
    
    // 외부에서 읽을수만 있도록 private(set) 설정하였음
    @Published private(set) var state: State
    
    private let reducer: Reducer<State, Action>
    
    init(state: State, reducer:@escaping Reducer<State, Action>) {
        self.state = state
        self.reducer = reducer
    }
    
    // 디스패치를 통해 액션을 행한다.
    func dispatch(action: Action) {
        // inout 매개변수를 넣을때는 & 표시 해줘야함
        // 리듀서 클로저를 실행해서 액션을 필터링한다.
        reducer(&self.state, action)
    }
}

//struct AppStore_Previews: PreviewProvider {
//    static var previews: some View {
//        AppStore()
//    }
//}
