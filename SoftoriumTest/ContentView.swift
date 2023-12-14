//
//  ContentView.swift
//  SoftoriumTest
//
//  Created by Maksim Guzeev on 14.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State var showLoader = true
    
    
    init() {
        let tabbarAppearance = UITabBarAppearance()
        tabbarAppearance.backgroundColor = UIColor(Color.tabbarBG)
        UITabBar.appearance().tintColor = UIColor(Color.green)
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color.gray)
        UITabBarItem.appearance().setTitleTextAttributes([.foregroundColor: UIColor(Color.green)], for: .selected)
    }
    var body: some View {
        VStack {
            if showLoader {
                LoaderView(showLoader: $showLoader)
            } else {
                TabView {
                    TradeView()
                        .tabItem {
                            Image("Vector")
                            Text("Trade")
                        }
                    TopView()
                        .tabItem {
                            Image(systemName: "person.fill")
                            Text("Top")
                        }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
