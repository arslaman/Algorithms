//
//  BinarySearch.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 01/10/16.
//  Copyright © 2016 Ruslan Mansurov. All rights reserved.
//

import Foundation

func binarySearch(array: [Int], searchValue: Int) -> Int? {
    if array.count == 0 {
        return nil
    }
    
    var left = 0
    var right = array.count
    
    while left < right {
        let center = (right - left) / 2 + left
        if searchValue == array[center] {
            return center
        } else if searchValue < array[center] {
            right = center
        } else {
            left = center + 1
        }
    }
    
    return nil
}
