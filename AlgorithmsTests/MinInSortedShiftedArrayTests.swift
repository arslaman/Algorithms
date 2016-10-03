//
//  MinInSortedShiftedArrayTests.swift
//  AlgorithmsTests
//
//  Created by Ruslan Mansurov on 01/10/16.
//  Copyright © 2016 Ruslan Mansurov. All rights reserved.
//

import XCTest
@testable import Algorithms

class MinInSortedShiftedArrayTests: XCTestCase {
    
    func testWhileMinAtTheLeftPart() {
        let array = [10, 3, 4, 5, 6, 7, 9]
        let result = minInSortedShiftedArray(array: array)
        XCTAssertEqual(result!, 3)
    }
    
    func testWhileMinAtTheRightPart() {
        let array = [6, 7, 9, 10, 3, 4, 5]
        let result = minInSortedShiftedArray(array: array)
        XCTAssertEqual(result!, 3)
    }
    
    func testWhileMinAtTheBeginning() {
        let array = [3, 4, 5, 6, 7, 9, 10]
        let result = minInSortedShiftedArray(array: array)
        XCTAssertEqual(result!, 3)
    }
    
    func testWhileMinAtTheEnd() {
        let array = [4, 5, 6, 7, 9, 10, 3]
        let result = minInSortedShiftedArray(array: array)
        XCTAssertEqual(result!, 3)
    }
    
}
