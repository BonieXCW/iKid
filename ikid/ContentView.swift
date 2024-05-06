//
//  ContentView.swift
//  ikid
//
//  Created by stlp on 4/29/24.
//

import SwiftUI


struct ContentView: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor.separator
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20)], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20)], for: .selected)
    }
    
    var body: some View {
        TabView {
            
            GoodView()
                .tabItem {
                    Label("Good", systemImage: "")                }
            
            PunView()
                .tabItem {
                    Label("Pun", systemImage: "")
                }
            
            DadView()
                .tabItem {
                    Label("Dad", systemImage: "")
                }
            
        }
    }
}

#Preview {
    ContentView()
}
