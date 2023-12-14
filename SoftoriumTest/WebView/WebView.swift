//
//  WebView.swift
//  
//
//  Created by Maksim Guzeev on 30.07.2022.
//

import Foundation
import UIKit
import SwiftUI

struct WebView: UIViewControllerRepresentable {
 
    let url: String
    func makeUIViewController(context: Context) -> WebViewController {
        let v = WebViewController()
        v.url = url
        v.load()
        return v
    }
    
    func updateUIViewController(_ uiViewController: WebViewController, context: Context) {
        uiViewController.url = url
        uiViewController.load()
    }
}
