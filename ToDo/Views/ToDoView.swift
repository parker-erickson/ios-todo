//
//  TodoItemView.swift
//  ToDo
//
//  Created by Parker on 9/27/23.
//

import FirebaseFirestoreSwift
import SwiftUI

struct ToDoView: View {
    @StateObject var viewModel: ToDoViewViewModel
    @FirestoreQuery var items: [ToDoItem]
    
    init(userId: String) {
        self._items = FirestoreQuery(
            collectionPath: "users/\(userId)/todos"
        )
        self._viewModel = StateObject(
            wrappedValue: ToDoViewViewModel(userId: userId)
        )
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in
                    ToDoItemView(item: item)
                        .swipeActions {
                            Button("Delete"){
                                viewModel.delete(id: item.id)
                            }
                            .tint(.red)
                        }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("To Do")
            .toolbar {
                Button{
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(newItemPresented:
                    $viewModel.showingNewItemView)
            }
        }
    }
}

struct ToDoView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoView(userId: "meAk03BLgwZm8b2yymU3hLuHzor1")
    }
}
