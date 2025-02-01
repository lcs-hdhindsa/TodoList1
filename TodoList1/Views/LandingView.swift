//
//  LandingView.swift
//  TodoList1
//
//  Created by Harshan Dhindsa on 2025-02-01.
//

import SwiftUI

struct LandingView: View {

    // MARK: Stored properties

    // The item currently being added
    @State var newItemDescription = ""

    // The search text
    @State var searchText = ""

    //The list of to-do items
    @State var todos: [TodoItem] = exampleItems
    
    // MARK: Computed properties
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    List(todos) { todo in
                        
                        ItemView(currentItem: todo)
                    }
                }
                .searchable(text: $searchText)


                HStack {
                    TextField("Enter a to-do item", text: $newItemDescription)

                    Button("ADD") {
                        // Add the new to-do item
                    }
                    .font(.caption)
                }
                .padding(20)
            }
            .navigationTitle("To do")
        }
    }
}

#Preview {
    LandingView()
}



