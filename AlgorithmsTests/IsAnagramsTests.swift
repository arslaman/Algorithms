//
//  IsAnagramsTests.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 09/10/16.
//  Copyright © 2016 Ruslan Mansurov. All rights reserved.
//

import XCTest

class IsAnagramsTests: XCTestCase {
    
    func testWithAnagrams() {
        let string1 = "abcd"
        let string2 = "badc"
        let result = isAnagrams(string1: string1, string2: string2)
        XCTAssert(result == true)
    }
    
    func testWithNotAnagrams() {
        let string1 = "abcd"
        let string2 = "bada"
        let result = isAnagrams(string1: string1, string2: string2)
        XCTAssert(result == false)
    }
    
    func testWithDifferentLengths() {
        let string1 = "abcd"
        let string2 = "aabcd"
        let result = isAnagrams(string1: string1, string2: string2)
        XCTAssert(result == false)
    }
    
    func testWithEmptyString() {
        let string1 = "abcd"
        let string2 = ""
        let result = isAnagrams(string1: string1, string2: string2)
        XCTAssert(result == false)
    }
}
