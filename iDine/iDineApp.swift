//
//  iDineApp.swift
//  iDine
//
//  Created by Sonali Gosawi on 30/06/2026.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(order)
        }
    }
}
