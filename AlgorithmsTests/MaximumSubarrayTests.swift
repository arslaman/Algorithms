//
//  MaximumSubarrayTests.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 2/15/17.
//  Copyright © 2017 Ruslan Mansurov. All rights reserved.
//

import XCTest

class MaximumSubarrayTests: XCTestCase {
    
    func test() {
        let array = [ 97, 0, -461, -125, -404, -59, -322, -495, -288, -341, -449, -313, -192, -214, -389, -202, -183, -72, -416, -455, -187, -242, -416, 39, -198, -338, -465, -248, -25, -398, -97, -461, -214, -423, -407, -77, -190, -67, -178, -410, -160, 72, -350, -31, -85, -247, -319, -462, -303, -48, -354, -110, 17, 60, 19, 80, -218, -28, -426, -366, -140, 50 ];
        
        let maxSum = maxSubarraySum(array: array)
        XCTAssert(maxSum == 176)
    }
    
    func testWithAllNegative() {
        let array = [ -97, -20 ];
        
        let maxSum = maxSubarraySum(array: array)
        XCTAssert(maxSum == -20)
    }
    
    func testWithOneElement() {
        let array = [ -25 ];
        
        let maxSum = maxSubarraySum(array: array)
        XCTAssert(maxSum == -25)
    }
    
}
