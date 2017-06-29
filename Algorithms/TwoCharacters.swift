//
//  TwoCharacters.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 3/3/17.
//  Copyright © 2017 Ruslan Mansurov. All rights reserved.
//

import Foundation

func twoCharacters(string: String) -> Int {
    
    func isStringGood(string: String) -> Bool {
        var prevChar = string.characters.first
        let restOfArray = string.characters.dropFirst()
        for char in restOfArray {
            if char == prevChar {
                return false
            }
            prevChar = char
        }
        return true
    }
    
    var letters = Set<Character>()
    for char in string.characters {
        letters.insert(char)
    }
    
    var maxLength = 0
    for letter1 in letters {
        for letter2 in letters {
            if letter1 == letter2 {
                continue;
            }
            
            let allowedCharacters: Set = [letter1, letter2]
            let result = String(string.characters.filter { allowedCharacters.contains($0) })
            if isStringGood(string: result) {
                maxLength = max(maxLength, result.characters.count)
            }
        }
    }
    
    return maxLength
}
