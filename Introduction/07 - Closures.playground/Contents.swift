//: Playground - noun: a place where people can play

import UIKit

// Closures 

let names = ["Chris","Alex","Eva","Barry","Daniella"]



func backward(s1: String, s2:String) -> Bool {
    return s1 > s2
}

let reversedNames = names.sorted(by: backward)

let revNames = names.sorted(by: { (s1: String,s2: String) -> Bool in
    return s1>s2
})
let revNames2 = names.sorted(by: {s1,s2 in return s1>s2})
print(revNames2)

let revNamesImplitcit = names.sorted(by: { s1,s2 in s1>s2})

let revShortHand = names.sorted(by: { $0 > $1 })
print(revShortHand)

// Operator methods

let revOperatorMethod = names.sorted(by: >)


