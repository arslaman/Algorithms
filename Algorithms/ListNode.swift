//
//  ListNode.swift
//  Algorithms
//
//  Created by Ruslan Mansurov on 09/10/16.
//  Copyright © 2016 Ruslan Mansurov. All rights reserved.
//

import Foundation

class ListNode<T> {
    
    var value: T
    var next: ListNode?
    
    init(value: T) {
        self.value = value
    }
}
