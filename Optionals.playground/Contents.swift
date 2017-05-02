//: Playground - noun: a place where people can play

import UIKit

var myName: String = "Tapan"

var myOptionalName: String? = "Tapan"

print(myName)

if let newName = myOptionalName {
    print(newName)
}

// Implicit Unwrapped Optionals

var myNumber: Int!

myNumber = 24323

myNumber = nil

var newNumber = myNumber



