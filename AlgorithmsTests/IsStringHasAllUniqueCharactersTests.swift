//
//  IsStringHasAllUniqueCharactersTests.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 08/10/16.
//  Copyright © 2016 Ruslan Mansurov. All rights reserved.
//

import XCTest

class IsStringHasAllUniqueCharactersTests: XCTestCase {
    
    func testWithNotUniqueString() {
        let s = "abcda"
        let expectedResult = false
        let result = isStringHasAllUniqueCharacters(string: s)
        XCTAssertEqual(result, expectedResult)
    }
    
    func testWithUniqueString() {
        let s = "abcd"
        let expectedResult = true
        let result = isStringHasAllUniqueCharacters(string: s)
        XCTAssertEqual(result, expectedResult)
    }
    
}
