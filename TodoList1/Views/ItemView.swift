//
//  ItemView.swift
//  TodoList1
//
//  Created by Harshan Dhindsa on 2025-02-01.
//

import SwiftUI

struct ItemView: View {
    
    @Bindable var currentItem: TodoItem
    
    var body: some View {
        Label(
            title: {
                TextField("Enter a to-do item", text: $currentItem.title, axis: .vertical)
            }, icon: {
                Image(systemName: currentItem.done ? "checkmark.circle" : "circle")
                    // Tap to mark as done
                    .onTapGesture {
                        currentItem.done.toggle()
                    }
            }
        )
    }
}

//#Preview {
 //   List {
   //     ItemView(currentItem: Binding.constant(firstItem))
   //    ItemView(currentItem: Binding.constant(secondItem))
  //  }
// }
