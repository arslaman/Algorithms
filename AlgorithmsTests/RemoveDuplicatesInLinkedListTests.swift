//
//  RemoveDuplicatesInLinkedListTests.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 09/10/16.
//  Copyright © 2016 Ruslan Mansurov. All rights reserved.
//

import XCTest

class RemoveDuplicatesInLinkedListTests: XCTestCase {
    
    func test() {
        let head = LinkedList<Int>(array: [0, 0, 1, 2, 1, 3, 0, 3]).head
        let expectedHead = LinkedList<Int>(array: [0, 1, 2, 3]).head
        let resultHead = removeDuplicatesInLinkedList(head: head)
        
        compare(head1: resultHead, head2: expectedHead)
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
