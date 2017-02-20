//
//  MaxConsecutiveGap.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 2/17/17.
//  Copyright © 2017 Ruslan Mansurov. All rights reserved.
//

/**
 Given an unsorted array, find the maximum difference between the successive elements in its sorted form.
 
 Try to solve it in linear time/space.
 
 Example :
 
 Input : [1, 10, 5]
 Output : 5
 Return 0 if the array contains less than 2 elements.
 
 You may assume that all the elements in the array are non-negative integers and fit in the 32-bit signed integer range.
 You may also assume that the difference will not overflow.
 */

import Foundation

class Bucket {
    var count: Int = 0
    var min: Int = 0
    var max: Int = 0
}

func maxConsecutiveGap(array: [Int]) -> Int {
    
    if array.count < 2 {
        return 0
    }
    
    var max = array[0]
    var min = array[0]
    for item in array {
        max = max < item ? item : max
        min = min > item ? item : min
    }
    
    if max == min {
        return 0
    }
    
    var buckets = [Bucket]()
    for _ in array {
        let bucket = Bucket()
        buckets.append(bucket)
    }
    
    let gap = Int(ceil(Double((max - min) / (array.count - 1))))
    for item in array {
        let index = Int((item - min) / gap)
        let bucket = buckets[index]
        if (bucket.count == 0) {
            bucket.min = item
            bucket.max = item
            bucket.count = 1
        } else {
            bucket.min = item < bucket.min ? item : bucket.min
            bucket.max = item > bucket.max ? item : bucket.max
            bucket.count += 1
        }
    }
    
    var maxGap = gap
    var prevBucket: Bucket?
    for bucket in buckets {
        if bucket.count == 0 {
            continue
        }
        
        if prevBucket != nil {
            maxGap = bucket.min - prevBucket!.max > maxGap ? bucket.min - prevBucket!.max : maxGap
        }
        prevBucket = bucket
    }
    
    return maxGap
}
