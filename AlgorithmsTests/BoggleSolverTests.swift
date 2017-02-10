//
//  BoggleSolverTests.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 2/9/17.
//  Copyright © 2017 Ruslan Mansurov. All rights reserved.
//

import XCTest

class BoggleSolverTests: XCTestCase {
    
    func testWithSuitableWords() {
        
        let matrix = [
            ["C", "A", "T"],
            ["H", "O", "P"],
            ["A", "I", "R"],
            ]
        
        let englishWords = ["CAT", "COT", "HAT" ,"HOT", "OAT", "PAT", "COAT", "CHAT", "HAIR", "CHOIR", "CHAIR"]
        
        let isEnglishWord = {(word: String) -> Bool in
            let words = Set<String>(englishWords)
            if words.contains(word) {
                return true
            }
            return false
        }
        
        let words = findWords(grid: matrix, isEnglishWordFunction: isEnglishWord)
        
        assert(englishWords.count == words.count)
        for word in englishWords {
            assert(words.contains(word))
        }
    }
    
    func testWithNoEnglishWords() {
        
        let matrix = [
            ["C", "A", "T"],
            ["H", "O", "P"],
            ["A", "I", "R"],
            ]
        
        let isEnglishWord = {(word: String) -> Bool in
            return false
        }
        
        let words = findWords(grid: matrix, isEnglishWordFunction: isEnglishWord)
        assert(words.isEmpty)
    }
    
    func testWithWordsThatShouldntBeInResult() {
        
        let matrix = [
            ["C", "A", "T"],
            ["H", "O", "P"],
            ["A", "I", "R"],
            ]
        
        let englishWords = ["POP", "TOT", "PROP", "RICH", "CRIP", "ACT"]
        
        let isEnglishWord = {(word: String) -> Bool in
            let words = Set<String>(englishWords)
            if words.contains(word) {
                return true
            }
            return false
        }
        
        let words = findWords(grid: matrix, isEnglishWordFunction: isEnglishWord)
        assert(words.isEmpty)
    }
}
