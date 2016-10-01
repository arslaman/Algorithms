//
//  BinarySearchTests.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 01/10/16.
//  Copyright © 2016 Ruslan Mansurov. All rights reserved.
//

import XCTest

class BinarySearchTests: XCTestCase {
    
    var searchArray = [Int]()
    let maxNumber = 100
    
    override func setUp() {
        super.setUp()
        for number in 1...maxNumber {
            searchArray.append(number)
        }
    }
    
    func testSearchWithEmptyArray() {
        let array: [Int] = [Int]()
        let index = binarySearch(array: array, searchValue: 1)
        XCTAssertNil(index)
    }
    
    func testSearchWithOneElementArray() {
        let array = [1]
        let index = binarySearch(array: array, searchValue: 1)
        
        XCTAssertNotNil(index)
        XCTAssertEqual(index!, 0)
    }
    
    func testSearchForRandomValue() {
        for i in 1...maxNumber {
            var array = [Int]()
            for number in 1...i {
                array.append(number)
            }
            let randomIndex = Int(arc4random_uniform(UInt32(i)))
            let testValue = array[randomIndex]
            
            let index = binarySearch(array: array, searchValue: testValue)
            XCTAssertNotNil(index)
            XCTAssertEqual(index!, randomIndex)
            XCTAssertEqual(array[index!], testValue)
        }
    }
    
    func testLowerBound() {
        let index = binarySearch(array: searchArray, searchValue: 1)
        XCTAssertNotNil(index)
        XCTAssertEqual(index!, 0)
        XCTAssertEqual(searchArray[index!], 1)
    }
    
    func testUpperBound() {
        let index = binarySearch(array: searchArray, searchValue: maxNumber)
        XCTAssertNotNil(index)
        XCTAssertEqual(index!, maxNumber - 1)
    }
    
    func testOutOfLowerBound() {
        let index = binarySearch(array: searchArray, searchValue: 0)
        XCTAssertNil(index)
    }
    
    func testOutOfUpperBound() {
        let index = binarySearch(array: searchArray, searchValue: maxNumber + 1)
        XCTAssertNil(index)
    }
}
