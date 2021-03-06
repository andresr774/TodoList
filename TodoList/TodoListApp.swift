//
//  TodoListApp.swift
//  TodoList
//
//  Created by Andres camilo Raigoza misas on 5/12/21.
//

import SwiftUI

/*
 MVVM Arquitecture
 Model - data point
 View - UI
 ViewModel - Manages models for View
 */

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
