//
//  MatrixChangeRowAndLinesToZero.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 08/10/16.
//  Copyright © 2016 Ruslan Mansurov. All rights reserved.
//

import Foundation

/**
 Write an algorithm such that if an element in an MxN matrix is 0, its entire row and
 column is set to 0.
 */
func matrixChangeRowsAndLinesToZero(matrix: [[Int]]) -> [[Int]] {
    
    let linesCount = matrix.count
    let rowsCount = matrix[0].count
    
    var linesToBeZero = [Bool](repeating: false, count: linesCount)
    var rowsToBeZero = [Bool](repeating: false, count: rowsCount)
    
    for i in 0...linesCount - 1 {
        for j in 0...rowsCount - 1 {
            if matrix[i][j] == 0 {
                linesToBeZero[i] = true
                rowsToBeZero[j] = true
            }
        }
    }
    
    var resultMatrix = [[Int]]()
    for _ in 0...linesCount - 1 {
        resultMatrix.append(Array(repeating:0, count:rowsCount))
    }
    
    for i in 0...linesCount - 1 {
        for j in 0...rowsCount - 1 {
            let shouldBeZero = linesToBeZero[i] || rowsToBeZero[j]
            resultMatrix[i][j] = shouldBeZero ? 0 : matrix[i][j]
        }
    }
    
    return resultMatrix
}
