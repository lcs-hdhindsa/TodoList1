//
//  ItemView.swift
//  TodoList1
//
//  Created by Harshan Dhindsa on 2025-02-01.
//

import SwiftUI

struct ItemView: View {
    let title: String
    let done: Bool

    var body: some View {
        Label(
            title: {
                Text(title)
            },
            icon: {
                Image(systemName: done == true ? "checkmark.circle" : "circle")
            }
        )
    }
}

#Preview {
    List {
        ItemView(title: "have a nap", done: false)
        ItemView(title: "Eat lunch", done: false)
    }
}
