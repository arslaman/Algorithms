//
//  IsStringHasAllUniqueCharacters.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 08/10/16.
//  Copyright © 2016 Ruslan Mansurov. All rights reserved.
//

import Foundation

/**
 Implement an algorithm to determine if a string has all unique characters.
 */
func isStringHasAllUniqueCharacters(string: String) -> Bool {
    
    var characters = Set<Character>()
    for char in string.characters {
        if characters.contains(char) {
            return false
        }
        characters.insert(char)
    }
    return true
    
}
