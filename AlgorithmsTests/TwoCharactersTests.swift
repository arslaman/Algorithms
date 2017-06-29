//
//  TwoCharactersTests.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 3/3/17.
//  Copyright © 2017 Ruslan Mansurov. All rights reserved.
//

import XCTest

class TwoCharactersTests: XCTestCase {
    
    func testExample() {
        let s = "beabeefeab"
        let output = twoCharacters(string: s)
        XCTAssertEqual(output, 5)
    }
    
    
    
}
