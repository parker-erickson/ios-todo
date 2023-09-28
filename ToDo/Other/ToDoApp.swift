//
//  ToDoApp.swift
//  ToDo
//
//  Created by Parker on 9/27/23.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
