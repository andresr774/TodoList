//
//  ItemModel.swift
//  TodoList
//
//  Created by Andres camilo Raigoza misas on 5/12/21.
//

import Foundation

// Immutable struct
struct ItemModel: Identifiable, Codable {
    
    let id: String 
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
