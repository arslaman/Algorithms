//
//  MatrixChangeRowAndLinesToZeroTests.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 08/10/16.
//  Copyright © 2016 Ruslan Mansurov. All rights reserved.
//

import XCTest

class MatrixChangeRowsAndLinesToZeroTests: XCTestCase {
    
    func test2X2Matrix() {
        
        let matrix = [
            [0, 1],
            [1, 0],
        ]
        
        let expectedMatrix = [
            [0, 0],
            [0, 0],
        ]
        
        let resultMatrix = matrixChangeRowsAndLinesToZero(matrix: matrix)
        compareMatrixes(resultMatrix: resultMatrix, expectedMatrix: expectedMatrix)
    }
    
    func test2X3Matrix() {
        
        let matrix = [
            [0, 1, 1],
            [1, 1, 1],
        ]
        
        let expectedMatrix = [
            [0, 0, 0],
            [0, 1, 1],
        ]
        
        let resultMatrix = matrixChangeRowsAndLinesToZero(matrix: matrix)
        compareMatrixes(resultMatrix: resultMatrix, expectedMatrix: expectedMatrix)
    }
    
    func testMatrixWithNoZeros() {
        
        let matrix = [
            [1, 1, 1],
            [1, 1, 1],
        ]
        
        let expectedMatrix = [
            [1, 1, 1],
            [1, 1, 1],
        ]
        
        let resultMatrix = matrixChangeRowsAndLinesToZero(matrix: matrix)
        compareMatrixes(resultMatrix: resultMatrix, expectedMatrix: expectedMatrix)
    }
    
    func compareMatrixes(resultMatrix: [[Int]], expectedMatrix: [[Int]]) {
        XCTAssert(resultMatrix.count == expectedMatrix.count)
        for i in 0...resultMatrix.count - 1 {
            XCTAssertEqual(resultMatrix[i], expectedMatrix[i])
        }
    }
}
