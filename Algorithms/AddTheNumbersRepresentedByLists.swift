//
//  AddTheNumbersRepresentedByLists.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 10/10/16.
//  Copyright © 2016 Ruslan Mansurov. All rights reserved.
//

import Foundation

/**
 You have two numbers represented by a linked list, where each node contains a single digit.
 The digits are stored in reverse order, such that the 1’s digit is at the head of the list.
 Write a function that adds the two numbers and returns the sum as a linked list.
 EXAMPLE
 Input: (7 -> 1 -> 6) + (5 -> 9 -> 2), means 617 + 295
 Output: 2 -> 1 -> 9, means 912
 */
func addTheNumbersRepresentedByListsInReverseOrder(head1: ListNode<Int>, head2: ListNode<Int>) -> ListNode<Int> {
    
    var sum = head1.value + head2.value
    var remainder = sum / 10
    
    let resultHead = ListNode<Int>(value: sum % 10)
    var node = resultHead
    
    var node1 = head1.next
    var node2 = head2.next
    
    while node1 != nil && node2 != nil {
        sum = node1!.value + node2!.value + remainder
        remainder = sum / 10
        node.next = ListNode<Int>(value: sum % 10)
        
        node = node.next!
        node1 = node1!.next
        node2 = node2!.next
    }
    
    var leftoverNode = node1 != nil ? node1 : node2
    while leftoverNode != nil {
        sum = leftoverNode!.value + remainder
        remainder = sum / 10
        node.next = ListNode<Int>(value: sum % 10)
        
        node = node.next!
        leftoverNode = leftoverNode!.next
    }
    
    if remainder > 0 {
        node.next = ListNode<Int>(value: remainder)
    }
    
    return resultHead
}

/**
 You have two numbers represented by a linked list, where each node contains a single digit.
 The digits are stored in direct order, such that the 1’s digit is at the head of the list.
 Write a function that adds the two numbers and returns the sum as a linked list.
 EXAMPLE
 Input: (6 -> 1 -> 7) + (2 -> 9 -> 5), means 617 + 295
 Output: 2 -> 1 -> 9, means 912
 */
func addTheNumbersRepresentedByLists(head1: ListNode<Int>, head2: ListNode<Int>) -> ListNode<Int> {
    
    var stack1 = [Int]()
    var node1: ListNode<Int>? = head1
    while node1 != nil {
        stack1.append(node1!.value)
        node1 = node1!.next
    }
    
    var stack2 = [Int]()
    var node2: ListNode<Int>? = head2
    while node2 != nil {
        stack2.append(node2!.value)
        node2 = node2!.next
    }
    
    var sum = stack1.popLast()! + stack2.popLast()!
    var remainder = sum / 10
    
    let resultHead = ListNode<Int>(value: sum % 10)
    var node = resultHead
    
    while !stack1.isEmpty && !stack2.isEmpty {
        sum = stack1.popLast()! + stack2.popLast()! + remainder
        remainder = sum / 10
        node.next = ListNode<Int>(value: sum % 10)
        
        node = node.next!
    }
    
    var leftoverStack = !stack1.isEmpty ? stack1 : stack2
    while !leftoverStack.isEmpty {
        sum = leftoverStack.popLast()! + remainder
        remainder = sum / 10
        node.next = ListNode<Int>(value: sum % 10)
        
        node = node.next!
    }
    
    if remainder > 0 {
        node.next = ListNode<Int>(value: remainder)
    }
    
    return resultHead
}
