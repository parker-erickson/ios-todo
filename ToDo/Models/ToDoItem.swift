//
//  ToDoItemModel.swift
//  ToDo
//
//  Created by Parker on 9/27/23.
//

import Foundation

struct ToDoItem: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool){
        isDone = state
    }
}
