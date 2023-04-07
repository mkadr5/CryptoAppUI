//
//  MainView.swift
//  CryptoApp
//
//  Created by Muhammet Kadir on 8.04.2023.
//

import SwiftUI

struct MainView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView (selection: $selectedTab){
            Text("0")
                .tabItem {
                    Image("home").renderingMode(.template)
                }.tag(0)
            Text("1")
                .tabItem {
                    Image("status-up").renderingMode(.template)
                }.tag(1)
            WalletView()
                .tabItem {
                    Image("wallet").renderingMode(.template)
                }.tag(2)
            Text("3")
                .tabItem {
                    Image("profile-circle").renderingMode(.template)
                }.tag(3)
        }.accentColor(.color1)
            
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
