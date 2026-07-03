//
//  MainView.swift
//  iDine
//
//  Created by Sonali Gosawi on 03/07/2026.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil")
                }
        }
    }
}

#Preview {
    MainView()
        .environmentObject(Order())
}
