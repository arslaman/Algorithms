//
//  MergeIntervals.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 22/02/17.
//  Copyright © 2017 Ruslan Mansurov. All rights reserved.
//

/**
 Given a set of non-overlapping intervals, insert a new interval into the intervals (merge if necessary).
 
 You may assume that the intervals were initially sorted according to their start times.
 
 Example 1:
 
 Given intervals [1,3],[6,9] insert and merge [2,5] would result in [1,5],[6,9].
 
 Example 2:
 
 Given [1,2],[3,5],[6,7],[8,10],[12,16], insert and merge [4,9] would result in [1,2],[3,10],[12,16].
 
 This is because the new interval [4,9] overlaps with [3,5],[6,7],[8,10].
 
 Make sure the returned intervals are also sorted.
 */

import Foundation

public class Interval {
    var start = 0
    var end = 0
    
    init(start: Int, end: Int) {
        self.start = start
        self.end = end
    }
}

func mergeIntervals(intervals: [Interval], newInterval: Interval) -> [Interval] {
    var result = [Interval]()
    var newInterval = newInterval
    
    for interval in intervals {
        if interval.end < newInterval.start {
            result.append(interval)
        } else if newInterval.end < interval.start {
            result.append(newInterval)
            newInterval = interval
        } else if (interval.start <= newInterval.end || newInterval.start <= interval.end) {
            newInterval = Interval(start: min(interval.start, newInterval.start),
                                   end: max(interval.end, newInterval.end))
        }
    }
    
    result.append(newInterval)
    
    return result
}
