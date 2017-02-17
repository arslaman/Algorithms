//
//  NextPermutation.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 2/17/17.
//  Copyright © 2017 Ruslan Mansurov. All rights reserved.
//

/**
 Implement the next permutation, which rearranges numbers into the numerically next greater permutation of numbers.
 If such arrangement is not possible, it must be rearranged as the lowest possible order ie, sorted in an ascending order.
 
 Examples:
 
 1,2,3 → 1,3,2
 3,2,1 → 1,2,3
 1,1,5 → 1,5,1
 20, 50, 113 → 20, 113, 50
 */

import Foundation

func nextPermutation(array: [Int]) -> [Int] {
    
    var array = array
    
    if array.count < 2 {
        return array
    }
    
    var pivot = -1
    for i in (0...array.count - 2).reversed() {
        if array[i] < array[i + 1] {
            pivot = i
            break
        }
    }
    
    if pivot >= 0 {
        var q = pivot + 1
        for i in (pivot...array.count - 1).reversed() {
            if array[i] > array[pivot] {
                q = i
                break
            }
        }
        
        if pivot != -1 {
            swap(&array[pivot], &array[q])
        }
    }
    
    var i = pivot + 1
    var j = array.count - 1
    while i < j {
        swap(&array[i], &array[j])
        i += 1
        j -= 1
    }
    
    return array
}
