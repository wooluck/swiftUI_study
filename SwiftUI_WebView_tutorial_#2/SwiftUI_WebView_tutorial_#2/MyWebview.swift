//
//  MyWebview.swift
//  SwiftUI_WebView_tutorial_#2
//
//  Created by 우럭mac on 2021/11/03.
//

import SwiftUI
import WebKit
// 이거 하고 info 들어가서 추가할꺼 해주자 !!

// uikit 의 uiview 를 사용할수 있도록 한다.
// UIViewControllerRepresentable -> 뷰컨트롤러를 사용하고싶으면 이렇게 상속받음된다.
struct MyWebview: UIViewRepresentable {
   
    //상속받는게 UIViewRepresentable
     
    var urlToLoad: String
    
    // ui view 만들기
    func makeUIView(context: Context) -> WKWebView { // 반환할것이 WKWebView
        
        //string자체가 옵셔널이라 언래핑한다.
        //self.urlToLoad 가 비어있다면 return WKWebview를 리턴 있다면 아래쪽에넣기.
        // unwrapping (스위프트 기초문법 05번)
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        // 웹뷰 인스턴스 생성
        let webview = WKWebView()
        
        // 웹뷰를 로드한다.
        webview.load(URLRequest(url: url))
        
        return webview
    }
    // 업데이트 ui view
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebview>) {
        
    }
}

struct MyWebview_Previews: PreviewProvider {
    static var previews: some View {
        MyWebview(urlToLoad: "https://www.naver.com")
    }
}
