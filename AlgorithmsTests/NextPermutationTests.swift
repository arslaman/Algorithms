//
//  NextPermutationTests.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 2/17/17.
//  Copyright © 2017 Ruslan Mansurov. All rights reserved.
//

import XCTest

class NextPermutationTests: XCTestCase {
    
    func testWithOneElement() {
        let input = [1]
        let expectedOutput = [1]
        let output = nextPermutation(array: input)
        XCTAssertEqual(output, expectedOutput)
    }
    
    func testWithTwoElements() {
        var input = [1, 2]
        var expectedOutput = [2, 1]
        var output = nextPermutation(array: input)
        XCTAssertEqual(output, expectedOutput)
        
        input = [2, 1]
        expectedOutput = [1, 2]
        output = nextPermutation(array: input)
        XCTAssertEqual(output, expectedOutput)
    }
    
    func testComplexCases() {
        var input = [1, 2, 3]
        var expectedOutput = [1, 3, 2]
        var output = nextPermutation(array: input)
        XCTAssertEqual(output, expectedOutput)
        
        
        input = [3, 2, 1]
        expectedOutput = [1, 2, 3]
        output = nextPermutation(array: input)
        XCTAssertEqual(output, expectedOutput)
        
        input = [1, 1, 5]
        expectedOutput = [1, 5, 1]
        output = nextPermutation(array: input)
        XCTAssertEqual(output, expectedOutput)
        
        input = [0, 1, 2, 5, 3, 3, 0]
        expectedOutput = [0, 1, 3, 0, 2, 3, 5]
        output = nextPermutation(array: input)
        XCTAssertEqual(output, expectedOutput)
    }
}
