//: Playground - noun: a place where people can play

import UIKit

// Control Flows

// For in loops

for index in 1...5 {
    print("Index is \(index)")
}

let base = 3
let power = 10
var answer = 1

for _ in 1...power {
    answer *= base
}

print("\(base) to the power of \(power) is \(answer)")

// iterate through array

let names = ["Ann","Bob","Jack","Alex","John"]
for name in names {
    print("Hello \(name)!")
}

let numberOfLegs = ["spider" : 8 , "ant": 6, "cat": 4]
for (animalName,legCount) in numberOfLegs {
    print("\(animalName) has \(legCount) legs")
}


// While loops

var i = 1

while i <= 10 {
    print(i)
    i+=1
}

// repeat - while loops

i = 1
repeat {
    print(i)
    i += 1
} while i <= 10

// if statement
let num = 10
if num == 10 {
    print("Number is 10")
}

// Switch statement
// No break statement for each case
let someCharacter: Character = "z"

switch someCharacter {
case "a":
    print("Character is a")
case "z":
    print("Character is z")
default:
    print("Some other character")
}

switch someCharacter {
case "a","A":
    print("Character is a")
default:
    print("Some other character")
}

// Switch interval matching 

let approximateCount = 62
switch approximateCount {
case 1...10:
    print("1 to 10")
case 10..<20:
    print("10 to 20")
case 50...70:
    print("50 to 70")
default:
    print("Other range")
}

// Swith tuple matching

let somePoint = (0, 1)
switch somePoint {
case (0,0):
    print("(0,0) is origin")
case (_,0):
    print("(\(somePoint.0),0) is on the x-axis")
case (0,_):
    print("(0,\(somePoint.0)) is on the y-axis")
default:
    print("(\(somePoint.0),\(somePoint.1)) is outside of the box")
}


let yetAnotherPoint = (1,-1)
switch yetAnotherPoint {
case let(x,y) where x==y:
    print("(\(x),\(y)) is on line x==y")
case let (x,y):
    print("(\(x), \(y)) is just some arbitrary point")
}


// Control transfer Statements

// continue,break, fallthrough, return, throw

// fallthrough
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is "
switch integerToDescribe {
case 2,3,5,7,11:
    description += "a prime number, and also"
    fallthrough
default:
    description += "an integer"
}
print(description)




// guard statement

func checkValue() {
    let location: String? = "Name"
    
    guard let loc = location else {
        print("Location is nil")
        return
    }
    
}

if #available(iOS 10, *) {
    print("Available in iOS 10")
} else {
    print("Other platforms")
}




