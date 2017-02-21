//
//  FirstMissingInteger.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 2/21/17.
//  Copyright © 2017 Ruslan Mansurov. All rights reserved.
//

import Foundation

/**
 Given an unsorted integer array, find the first missing positive integer.
 
 Example:
 
 Given [1,2,0] return 3,
 
 [3,4,-1,1] return 2,
 
 [-8, -7, -6] returns 1
 
 Your algorithm should run in O(n) time and use constant space.
 */

func firstMissingPositive(array: [Int]) -> Int {
    var array = array;
    
    var minPositiveNumber = array[0]
    for number in array {
        if number > 0 {
            minPositiveNumber = minPositiveNumber > number ? number : minPositiveNumber
        }
    }
    
    if minPositiveNumber != 1 {
        return 1
    }
    
    for i in 0...array.count - 1 {
        var j = array[i] - 1
        while j >= 0 && j < array.count && array[j] >= 0 {
            let temp = array[j]
            array[j] = -array[j]
            array[j] = array[j] == 0 ? -1 : array[j]
            j = temp - 1
        }
    }
    
    for i in 0...array.count - 1 {
        if array[i] >= 0 {
            return i + 1
        }
    }
    
    return array.count + 1
}
