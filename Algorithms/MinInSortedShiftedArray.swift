//
//  MinInSortedShiftedArray.swift
//  Algorithms
// 
// Find min element of a sorted array, which was shifted
// Example: 
// given array = [3, 4, 5, 6, 7, 1, 2]
// result is 1
//
// Solution is using binary search
//
//  Created by Ruslan Mansurov on 01/10/16.
//  Copyright © 2016 Ruslan Mansurov. All rights reserved.
//

import Foundation

class MinInSortedShiftedArray {
    
    func min(array: [Int]) -> Int? {
        if array.count == 0 {
            return nil
        }
        
        var left = 0
        var right = array.count - 1
        
        while right - left != 1 {
            let center = (right - left) / 2 + left
            if array[center] > array[left] {
                left = center
            } else {
                right = center
            }
        }
        
        if array[left] > array[right] {
            return array[right]
        } else {
            return array[0]
        }
    }
}
