//
//  MyWebView.swift
//  StartWebView
//
//  Created by 김승우 on 2021/11/19.
//

import SwiftUI
import WebKit

// uikit의 uiview를 사용할 수 있도록 한다.
// UIViewControllerRepresentable 을 통해 스토리보드의 뷰 컨드롤러를 사용 가능
struct MyWebView: UIViewRepresentable {
    
    var urlToLoad: String
    
    // Create UIView
    func makeUIView(context: Context) -> WKWebView {
        //Unwrapping
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        // Create WebView instance
        let webView = WKWebView()
        // load web view
        webView.load(URLRequest(url: url))
        
        return webView
    }
    // Update UIView
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
        
    }
}

struct MyWebView_Previews: PreviewProvider {
    static var previews: some View {
        MyWebView(urlToLoad: "https://www.naver.com")
    }
}
