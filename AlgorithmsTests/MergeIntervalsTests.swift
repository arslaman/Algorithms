//
//  MergeIntervalsTests.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 22/02/17.
//  Copyright © 2017 Ruslan Mansurov. All rights reserved.
//

import XCTest

class MergeIntervalsTests: XCTestCase {
    
    func test() {
        
        var intervals = [Interval]();
        intervals.append(Interval(start:1, end:4))
        intervals.append(Interval(start:6, end:8))

        let output = mergeIntervals(intervals: intervals, newInterval: Interval(start: 1, end: 10))
        XCTAssertEqual(output.count, 1)
        XCTAssertEqual(output[0].start, 1)
        XCTAssertEqual(output[0].end, 10)
    }
    
    func testWithEmptyArray() {
        
        let intervals = [Interval]();
        
        let output = mergeIntervals(intervals: intervals, newInterval: Interval(start: 1, end: 3))
        XCTAssertEqual(output.count, 1)
        XCTAssertEqual(output[0].start, 1)
        XCTAssertEqual(output[0].end, 3)
    }
    
    func testNotIntersectedIntervals() {
        
        var intervals = [Interval]();
        intervals.append(Interval(start:1, end:3))
        intervals.append(Interval(start:7, end:9))
        
        let output = mergeIntervals(intervals: intervals, newInterval: Interval(start: 4, end: 6))
        XCTAssertEqual(output.count, 3)
        XCTAssertEqual(output[0].start, 1)
        XCTAssertEqual(output[0].end, 3)
        
        XCTAssertEqual(output[1].start, 4)
        XCTAssertEqual(output[1].end, 6)
        
        XCTAssertEqual(output[2].start, 7)
        XCTAssertEqual(output[2].end, 9)
    }
    
    func testIntervalAtTheEnd() {
        
        var intervals = [Interval]();
        intervals.append(Interval(start:1, end:3))
        intervals.append(Interval(start:7, end:9))
        
        let output = mergeIntervals(intervals: intervals, newInterval: Interval(start: 12, end: 15))
        XCTAssertEqual(output.count, 3)
        XCTAssertEqual(output[0].start, 1)
        XCTAssertEqual(output[0].end, 3)
        
        XCTAssertEqual(output[1].start, 7)
        XCTAssertEqual(output[1].end, 9)
        
        XCTAssertEqual(output[2].start, 12)
        XCTAssertEqual(output[2].end, 15)
    }
    
    func testIntervalAtTheBeginning() {
        
        var intervals = [Interval]();
        intervals.append(Interval(start:4, end:5))
        intervals.append(Interval(start:7, end:9))
        
        let output = mergeIntervals(intervals: intervals, newInterval: Interval(start: 1, end: 2))
        XCTAssertEqual(output.count, 3)
        XCTAssertEqual(output[0].start, 1)
        XCTAssertEqual(output[0].end, 2)
        
        XCTAssertEqual(output[1].start, 4)
        XCTAssertEqual(output[1].end, 5)
        
        XCTAssertEqual(output[2].start, 7)
        XCTAssertEqual(output[2].end, 9)
    }
}


