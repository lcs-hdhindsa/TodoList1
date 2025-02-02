//
//  TodoItem.swift
//  TodoList1
//
//  Created by Harshan Dhindsa on 2025-02-01.
//

import SwiftData

@Model
class TooloItem: Identifiable {
    var title: String
    var done: Bool

    init(title: String, done: Bool) {
        self.title = title
        self.done = done
    }
}

let firstItem = TooloItem(title: "Study for Chemistry quiz", done: false)

let secondItem = TooloItem(title: "Finish Computer Science assignment", done: true)

let thirdItem = TooloItem(title: "Go for a run around campus", done: false)

let exampleItems = [
    firstItem,
    secondItem,
    thirdItem
]
