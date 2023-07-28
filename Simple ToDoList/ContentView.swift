//
//  ContentView.swift
//  Simple ToDoList
//
//  Created by Apiphoom Chuenchompoo on 28/7/2566 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var todos: [String] = []
    @State private var newTodoTitle = ""
    
    var body: some View {
        VStack(spacing: 4) {
            HStack() {
                Text("Todo List")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding([.top, .leading],25)
                Spacer()
            }
            
            List {
                ForEach(todos, id: \.self) { todo in
                    Text(todo)
                }
                .onDelete(perform: deleteTodo)
                
                HStack {
                    TextField("New task", text: $newTodoTitle, onCommit: addTodo)
                    Button(action: addTodo) {
                        Image(systemName: "plus")
                    }
                }
            }
            .toolbar {
                EditButton()
            }
        }
    }
    
    private func addTodo() {
        let trimmed = newTodoTitle.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else { return }
        
        todos.append(trimmed)
        newTodoTitle = ""
    }
    
    private func deleteTodo(at offsets: IndexSet) {
        todos.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
