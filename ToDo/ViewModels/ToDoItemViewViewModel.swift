//
//  ToDoItemsViewViewModel.swift
//  ToDo
//
//  Created by Parker on 9/27/23.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

class ToDoItemViewViewModel: ObservableObject {
    init() {}
    
    func toggleIsDone(item: ToDoItem) {
        var newItem = item
        newItem.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(newItem.id)
            .setData(newItem.asDict())
        
    } 
}
