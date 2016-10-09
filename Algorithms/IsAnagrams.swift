//
//  IsAnagrams.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 09/10/16.
//  Copyright © 2016 Ruslan Mansurov. All rights reserved.
//

import Foundation

/**
 Write a method to decide if two strings are anagrams or not
 */
func isAnagrams(string1: String, string2: String) -> Bool {
    
    let lengthsAreDifferent = string1.characters.count != string2.characters.count
    if string1.isEmpty || string2.isEmpty || lengthsAreDifferent {
        return false
    }
    
    var charactersOfString1 = [Character: Int]()
    for char in string1.characters {
        let count = charactersOfString1[char] ?? 0
        charactersOfString1[char] = count + 1
    }
    
    var charactersOfString2 = [Character: Int]()
    for char in string2.characters {
        let count = charactersOfString2[char] ?? 0
        charactersOfString2[char] = count + 1
    }
    
    for (char, countInString1) in charactersOfString1 {
        let countInString2 = charactersOfString2[char] ?? 0
        if countInString1 != countInString2 {
            return false
        }
    }
    
    return true
}
