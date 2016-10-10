//
//  LinkedList.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 10/10/16.
//  Copyright © 2016 Ruslan Mansurov. All rights reserved.
//

import Foundation

class LinkedList<T> {
    var head: ListNode<T>
    
    init(head: ListNode<T>) {
        self.head = head
    }
    
    init(value: T) {
        self.head = ListNode<T>(value: value)
    }
    
    init(array: [T]) {
        assert(!array.isEmpty, "Array must not be empty")
        
        head = ListNode<T>(value: array.first!)
        
        var node = head
        if array.count > 1 {
            for i in 1...array.count - 1 {
                let value = array[i]
                node.next = ListNode<T>(value: value)
                node = node.next!
            }
        }
    }
}
