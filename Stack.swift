//
//  Stack.swift
//  
//
//  Created by MANISH KUMAR on 3/31/23.
//

import Foundation

struct Stack<T> {
    private var items: [T]?
    
    var isStackEmpty: Bool {
        items == nil
    }
    
    var top: T? {
        return items?.last
    }
    
   mutating func push(item: T) {
        guard !isStackEmpty else {
            items = []
            items?.append(item)
            return
        }
       items?.append(item)
    }
    
    mutating func pop() {
         guard !isStackEmpty else {
             print("Invalid operation - Stack is Empty")
             return
         }
        items?.removeLast()
     }
}

extension Stack: CustomStringConvertible {
    var description: String {
        return "---Stack --" + "\n" + (items?.map({String.init(describing: $0)})
            .reversed()
            .joined(separator: "\n") ?? "Empty Stack")
    }
}


