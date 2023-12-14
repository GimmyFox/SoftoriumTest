//
//  WebViewController.swift
//
//
//  Created by Maksim Guzeev on 30.07.2022.
//

import Foundation
import WebKit
import SwiftUI
open class WebViewController: UIViewController, WKUIDelegate {
    var url: String!
    var webView: WKWebView!
    
    open override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
        view.backgroundColor = UIColor(Color.clear)
    }
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        load()
    }
    public func load(){
        if let myURL = URL(string: url){
        let myRequest = URLRequest(url: myURL)
            DispatchQueue.main.async {
                self.webView.load(myRequest)
            }
        }
    }
}
