//: Playground - noun: a place where people can play

import UIKit


// Assignment

let x = 2
var y = 3

let (a,b) = (1,2)

5 + 2
5 * 2
5 - 2
5 / 2
9 % 4

let three = 3
let minusThree = -three
let plusThree = -minusThree

// Compound assignment
var compound = 1
compound += 2

// Comparison operators
1 == 1
1 != 2
1 < 2
1 <= 2
1 > 2
1 >= 2

//Comparing tuples
(1,"zebra") < (2, "apple")

(3, "apple") < (3, "bird")

(4, "dog") == (4, "dog")

// Ternary Operator
var hasHeader = true
var res = 10 + (hasHeader ? 50 : 20)

// Nil -coalescing Operator

var myVar : Int?  = nil
var myVar2 = 4

let result = myVar ?? myVar2

// Closed range operator

for index in 1...5 {
    print("\(index)")
}

// Half open range operator

for index in 1..<5 {
    print("\(index)")
}


let names = ["a","b","c"]
let count = names.count

for i in 0..<count {
    print("Person \(i+1) name is \(names[i])")
}


// Logical Operators

let myBool = true
let myBool2 = false
!myBool
myBool && myBool2
myBool || myBool2




