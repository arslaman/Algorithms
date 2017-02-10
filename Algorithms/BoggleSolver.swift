//
//  BoggleSolver.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 2/9/17.
//  Copyright © 2017 Ruslan Mansurov. All rights reserved.
//
// Write a Boggle Solver:
// Find valid English words, given an n x n grid of letters arranged as "tiles" (letter cubes)
//
// [C] [A] [T]
// [H] [O] [P]
// [A] [I] [R]
//
// Words >= 3 letters
// The tile must be adjoining in a 'chain'. (tiles in the chain may be adjacent horizontally, vertically, or diagonally.)
// Can traverse to any neighbor tile, BUT
// No tile traversed more than once in the same word
//
// For example, tile [C] can traverse to [A], [O], or [H]. From tile [O] we can move to any other tile since all are adjacent.
//
// Valid Words in solution (incomplete list):
// CAT
// COT
// HAT
// HOT
// OAT
// PAT
// COAT
// CHAT
// HAIR
// CHOIR
// CHAIR

// Some invalid words (traverses the same tile twice):
// TOT
// POP
// PROP (uses the same P tile twice)
//
//You do not need to create a dictionary. Assume that you have access to a dictionary for finding words:
//  bool isAnEnglishWord(String possibleWord);
//  - (BOOL)isAnEnglishWord:(NSString*) possibleWord

import Foundation

struct Node: Hashable {
    let value: String
    let posX: Int
    let posY: Int
    
    static func ==(lhs: Node, rhs: Node) -> Bool {
        return lhs.value == rhs.value && lhs.posX == rhs.posX && lhs.posY == rhs.posY
    }
    
    var hashValue: Int {
        return value.hashValue ^ posX.hashValue ^ posY.hashValue
    }
}

func findWords(grid: [[String]], isEnglishWordFunction: (String) -> Bool) -> [String] {
    
    var nodes = Set<Node>()
    for i in 0..<grid.count {
        for j in 0..<grid[i].count {
            let node = Node(value: grid[i][j], posX: i, posY: j)
            nodes.insert(node)
        }
    }
    
    var resultWords = [String]()
    for node in nodes {
        var newSet = nodes
        newSet.remove(node)
        let words = findWordsRecursive(nodes: newSet, currentNode: node, word: node.value)
        resultWords.append(contentsOf: words)
    }
    
    var wordsSet = Set<String>(resultWords)
    for word in resultWords {
        if !isEnglishWordFunction(word) {
            wordsSet.remove(word)
        }
    }
    
    return Array(wordsSet)
}

func findWordsRecursive(nodes: Set<Node>, currentNode: Node, word: String) -> [String] {

    var resultWords = [String]()
    var setCopy = nodes
    
    var nextNode = pickNextNode(nodes: setCopy, currentNode: currentNode)
    while nextNode != nil {
        var newSet = nodes
        newSet.remove(nextNode!)
        let words = findWordsRecursive(nodes: newSet, currentNode: nextNode!, word: word + nextNode!.value)
        resultWords.append(contentsOf: words)
        
        setCopy.remove(nextNode!)
        nextNode = pickNextNode(nodes: setCopy, currentNode: currentNode)
    }
    
    resultWords.append(word)
    
    return resultWords
}

func pickNextNode(nodes: Set<Node>, currentNode: Node) -> Node? {
    for node in nodes {
        if abs(node.posX - currentNode.posX) <= 1 && abs(node.posY - currentNode.posY) <= 1 {
            return node
        }
    }
    return nil
}
