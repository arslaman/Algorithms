//
//  RemoveDuplicatesInLinkedList.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 09/10/16.
//  Copyright © 2016 Ruslan Mansurov. All rights reserved.
//

import Foundation

/**
 Write code to remove duplicates from an unsorted linked list.
 */
func removeDuplicatesInLinkedList(head: ListNode<Int>) -> ListNode<Int> {
    var node = head
    var values = Set<Int>()
    values.insert(node.value)
    
    while node.next != nil {
        if values.contains(node.next!.value) {
            node.next = node.next!.next
        } else {
            values.insert(node.next!.value)
            node = node.next!
        }
    }
    
    return head
}
