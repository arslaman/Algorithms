//
//  BoggleSolverTests.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 2/9/17.
//  Copyright © 2017 Ruslan Mansurov. All rights reserved.
//

import XCTest

class BoggleSolverTests: XCTestCase {
    
    func test() {
        
        let matrix = [
            ["C", "A", "T"],
            ["H", "O", "P"],
            ["A", "I", "R"],
            ]
        
        let englishWords = ["CAT", "COT", "HAT" ,"HOT", "OAT", "PAT", "COAT", "CHAT", "HAIR", "CHOIR", "CHAIR", "POP"]
        
        let isEnglishWord = {(word: String) -> Bool in
            let words = Set<String>(englishWords)
            if words.contains(word) {
                return true
            }
            return false
        }
        
        let words = findWords(grid: matrix, isEnglishWordFunction: isEnglishWord)
        
        // array of english words contains "POP" which is not suitable for our grid (P is used 2 times)
        assert(englishWords.count - 1 == words.count)
        assert(!words.contains("POP"))
    }
}
