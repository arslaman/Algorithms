//
//  AllPermutationsOfString.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 08/10/16.
//  Copyright © 2016 Ruslan Mansurov. All rights reserved.
//

import Foundation

/**
 Design an algorithm to print all permutations of a string. For simplicity, assume all characters are unique
 */
func allPermutationsOfString(string: String) -> [String] {
    if string.characters.count == 0 {
        return []
    } else if string.characters.count == 1 {
        return [string]
    } else {
        
        let truncated = string.substring(to: string.index(before: string.endIndex))
        let character = string.characters.last!
        
        let permutations = allPermutationsOfString(string: truncated)
        var resultPermutations = Set<String>()
        
        for chain in permutations {
            var index = chain.startIndex
            for _ in 0...chain.characters.count {
                var tempChain = chain
                tempChain.insert(character, at: index)
                resultPermutations.insert(tempChain)
                index = tempChain.index(after: index)
            }
        }
        
        return Array(resultPermutations)
    }
}
