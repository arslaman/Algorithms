//
//  MaxConsecutiveGapTests.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 2/17/17.
//  Copyright © 2017 Ruslan Mansurov. All rights reserved.
//

import XCTest

class MaxConsecutiveGapTests: XCTestCase {
    
    func testWithOneElement() {
        let input = [1]
        let expectedOutput = 0
        let output = maxConsecutiveGap(array: input)
        XCTAssertEqual(output, expectedOutput)
    }
    
    func testWithTwoElements() {
        var input = [1, 2]
        var expectedOutput = 1
        var output = maxConsecutiveGap(array: input)
        XCTAssertEqual(output, expectedOutput)
        
        input = [10, 1]
        expectedOutput = 9
        output = maxConsecutiveGap(array: input)
        XCTAssertEqual(output, expectedOutput)
        
        input = [5, 5]
        expectedOutput = 0
        output = maxConsecutiveGap(array: input)
        XCTAssertEqual(output, expectedOutput)
    }
    
    func testComplexCases() {
        var input = [1, 2, 3]
        var expectedOutput = 1
        var output = maxConsecutiveGap(array: input)
        XCTAssertEqual(output, expectedOutput)
        
        
        input = [3, 2, 1]
        expectedOutput = 1
        output = maxConsecutiveGap(array: input)
        XCTAssertEqual(output, expectedOutput)
        
        input = [222, 222, 222]
        expectedOutput = 0
        output = maxConsecutiveGap(array: input)
        XCTAssertEqual(output, expectedOutput)
        
        input = [1, 2, 1000]
        expectedOutput = 998
        output = maxConsecutiveGap(array: input)
        XCTAssertEqual(output, expectedOutput)
        
        input = [150, 48, 23, 12, 99, 200, 82]
        expectedOutput = 51
        output = maxConsecutiveGap(array: input)
        XCTAssertEqual(output, expectedOutput)
    }
    
}
