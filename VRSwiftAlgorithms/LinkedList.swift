//
//  LinkedList.swift
//  VRSwiftAlgorithms
//
//  Created by Volodymyr Romanov on 8/2/16.
//  Copyright © 2016 Volodymyr Romanov. All rights reserved.
//

import Foundation

class LinkedList<T: Equatable> {
    private var head: LLNode<T> = LLNode<T>()
    
    func addLink(key: T) {
        if(head.key == nil) {
            head.key = key
            return
        }
        
        var current: LLNode? = head
        while (current != nil) {
            if (current?.next == nil) {
                let childToUse: LLNode = LLNode<T>()
                childToUse.key = key
                childToUse.previous = current
                current!.next = childToUse
                break
            }
            current = current?.next
        }
    }

}