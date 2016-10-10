//
//  RemoveDuplicatesInLinkedListTests.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 09/10/16.
//  Copyright © 2016 Ruslan Mansurov. All rights reserved.
//

import XCTest

class RemoveDuplicatesInLinkedListTests: XCTestCase {
    
    func testExample() {
        let head = list(array: [0, 0, 1, 2, 1, 3, 0, 3])
        let expectedHead = list(array: [0, 1, 2, 3])
        let resultHead = removeDuplicatesInLinkedList(head: head)
        
        compare(head1: resultHead, head2: expectedHead)
    }
    
    func list(array: [Int]) -> ListNode<Int> {
        assert(!array.isEmpty, "Array must not be empty")
        
        let head = ListNode<Int>(value: array.first!)
        
        var node = head
        for i in 1...array.count - 1 {
            let value = array[i]
            node.next = ListNode<Int>(value: value)
            node = node.next!
        }
        
        return head
    }
    
    func compare(head1: ListNode<Int>, head2: ListNode<Int>) {
        
        var node1 = head1
        var node2 = head2
        
        while node1.next != nil && node2.next != nil {
            XCTAssertEqual(node1.value, node2.value)
            node1 = node1.next!
            node2 = node2.next!
        }
        
        XCTAssert(node1.next == nil)
        XCTAssert(node2.next == nil)
    }
    
}
