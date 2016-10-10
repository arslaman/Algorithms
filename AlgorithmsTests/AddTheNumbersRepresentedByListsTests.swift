//
//  AddTheNumbersRepresentedByListsTests.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 10/10/16.
//  Copyright © 2016 Ruslan Mansurov. All rights reserved.
//

import XCTest

class AddTheNumbersRepresentedByListsTests: XCTestCase {
    
    func test() {
        let roundsCount = 100
        for _ in 1...roundsCount {
            let number1 = Int(arc4random() % 1000)
            let head1 = headOfListFromNumber(number: number1, reversed: false)
            
            let number2 = Int(arc4random() % 1000)
            let head2 = headOfListFromNumber(number: number2, reversed: false)
            
            let expectedHead = headOfListFromNumber(number: number1 + number2, reversed: true)
            let resultHead = addTheNumbersRepresentedByLists(head1: head1, head2: head2)
            compare(head1: resultHead, head2: expectedHead)
        }
    }
    
    func testReverseOrder() {
        let roundsCount = 100
        for _ in 1...roundsCount {
            let number1 = Int(arc4random() % 1000)
            let head1 = headOfListFromNumber(number: number1, reversed: true)
            
            let number2 = Int(arc4random() % 1000)
            let head2 = headOfListFromNumber(number: number2, reversed: true)
            
            let expectedHead = headOfListFromNumber(number: number1 + number2, reversed: true)
            let resultHead = addTheNumbersRepresentedByListsInReverseOrder(head1: head1, head2: head2)
            compare(head1: resultHead, head2: expectedHead)
        }
    }
    
    func testAdd1And999() {
        
        let number1 = 1
        let head1 = headOfListFromNumber(number: number1, reversed: false)
        
        let number2 = 999
        let head2 = headOfListFromNumber(number: number2, reversed: false)
        
        // expecting 1000
        let expectedHead = headOfListFromNumber(number: number1 + number2, reversed: true)
        let resultHead = addTheNumbersRepresentedByLists(head1: head1, head2: head2)
        compare(head1: resultHead, head2: expectedHead)
    }
    
    func testAdd1And0() {
        
        let number1 = 1
        let head1 = headOfListFromNumber(number: number1, reversed: false)
        
        let number2 = 0
        let head2 = headOfListFromNumber(number: number2, reversed: false)
        
        // expecting 1
        let expectedHead = headOfListFromNumber(number: number1 + number2, reversed: true)
        let resultHead = addTheNumbersRepresentedByLists(head1: head1, head2: head2)
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
    
    func headOfListFromNumber(number: Int, reversed: Bool) -> ListNode<Int> {
        let digits = String(number).characters.flatMap { Int(String($0)) }
        let list = LinkedList<Int>(array: reversed ? digits.reversed() : digits)
        return list.head
    }
    
}
