//
//  TodoList1App.swift
//  TodoList1
//
//  Created by Harshan Dhindsa on 2025-02-01.
//
import SwiftData
import SwiftUI

@main
struct TodoList1App: App {
    var body: some Scene {
        WindowGroup {
            LandingView()
                .modelContainer(for: TodoItem.self)
        }
    }
}
