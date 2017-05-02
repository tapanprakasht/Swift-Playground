//: Playground - noun: a place where people can play

import UIKit

// LinkedList in swift

class Node<T: Equatable> {
  var value: T? = nil
  var next: Node? = nil
}

class LinkedList<T: Equatable> {
  var head = Node<T>()
  
  func insert(value: T) {
    if self.head.next == nil {
      self.head.value = value
    } else {
      var lastNode = self.head
      while lastNode.next != nil {
        lastNode = lastNode.next!
      }
      
      let newNode = Node<T>()
      newNode.value = value
      lastNode.next = newNode
    }
  }
  
  func printAllKeys() {
    var current: Node! = self.head
    while current != nil && current.next != nil {
      print("Value: \(current.value)")
      current = current.next
    }
  }
}


var myList = LinkedList<Int>()
myList.insert(value: 200)
myList.insert(value: 300)
myList.printAllKeys()


