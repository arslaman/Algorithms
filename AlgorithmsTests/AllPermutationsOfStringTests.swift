//
//  AllPermutationsOfStringTests.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 08/10/16.
//  Copyright © 2016 Ruslan Mansurov. All rights reserved.
//

import XCTest

class AllPermutationsOfStringTests: XCTestCase {
    
    func testWith1Element() {
        let expectedResult = ["a"]
        let result = allPermutationsOfString(string: "a")
        
        compare(result: result, expectedResult: expectedResult)
    }
    
    func testWith2Elements() {
        let expectedResult = ["ab", "ba"]
        let result = allPermutationsOfString(string: "ab")
        
        compare(result: result, expectedResult: expectedResult)
    }
    
    func testWith3Elements() {
        let expectedResult = ["abc", "acb", "cab", "bac", "bca", "cba"]
        let result = allPermutationsOfString(string: "abc")
        
        compare(result: result, expectedResult: expectedResult)
    }
    
    func compare(result: [String], expectedResult: [String]) {
        XCTAssertEqual(result.count, expectedResult.count)
        for chain in expectedResult {
            XCTAssert(result.contains(chain))
        }
    }
}
