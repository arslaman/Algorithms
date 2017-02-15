//
//  MaximumSubarraySum.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 2/15/17.
//  Copyright © 2017 Ruslan Mansurov. All rights reserved.
//

/**
 * In computer science, the maximum subarray problem is the task of finding the contiguous subarray within a one-dimensional array of numbers which has the largest sum.
 * For example, for the sequence of values
 *    −2, 1, −3, 4, −1, 2, 1, −5, 4;
 * the contiguous subarray with the largest sum is
 *    4, −1, 2, 1,
 * with sum 6.
 */

import Foundation

func maxSubarraySum(array: [Int]) -> Int {
    var maxEndingHere = array[0]
    var max = maxEndingHere
    
    for i in 1..<array.count {
        let x = array[i]
        maxEndingHere = x > maxEndingHere + x ? x : maxEndingHere + x
        max = max < maxEndingHere ? maxEndingHere : max
    }
    
    return max
}
