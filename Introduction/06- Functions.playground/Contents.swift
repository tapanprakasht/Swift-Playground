//: Playground - noun: a place where people can play

import UIKit


// Functions

func greet(person: String) -> String {
    let greeting = "Hello " + person
    return greeting
}

greet(person: "Tapan")

func minMax(array:[Int]) -> (min: Int, max: Int)? {
    var currentMax = array[0]
    var currentMin = array[0]
    
    for value in array {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax{
            currentMax = value
        }
    }
    
    return (currentMin,currentMax)
}

if let bounds = minMax(array: [9,1,3,0,2,-1]) {
    print("Min:\(bounds.min), Max: \(bounds.max)")
}

// Argument label
func greetPerson(person: String, from hometown: String) -> String {
    return "Hello " + person + " from " + hometown
}

greetPerson(person: "Tapan", from: "Kerala")

// Omitting arugment label
func someFunction(_ firstParam: Int, secondParam: Int){
    
}

someFunction(1, secondParam: 3)

// Default value in functions
func someFunctions(firstParam:Int,secondParam:Int = 12) -> Int {
    return firstParam + secondParam
}

someFunctions(firstParam: 1, secondParam: 2)
someFunctions(firstParam: 2)

// Vaiadic functions
func arithmenticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total
}
arithmenticMean(1,2,4,5,6,8,3)
arithmenticMean(5,3,2,1,5,6,2,1)



//func addNumber(first: Int, second: Int) -> Int {
//    return first = first + second
//}

// In-Out parameter

func swapTwoInts(a: inout Int, b: inout Int) {
    let temporary = a
    a = b
    b = temporary
}


var a = 10
var b = 20
swapTwoInts(a: &a,b: &b)
print("\(a) and \(b)")

// Function Types
func addTwoInts(a: Int,b: Int) -> Int {
    return a+b
}


var mathFunction: (Int,Int) -> Int = addTwoInts
mathFunction(2,3)

var anotherMathFunction = addTwoInts
anotherMathFunction(4,5)


// Function Types as Parameter Types

func printMathResult(mathFunction: (Int,Int)-> Int, a: Int, b: Int) {
    print(mathFunction(a,b))
}

printMathResult(mathFunction: mathFunction, a: 3, b: 5)

// Function Types as Return Types

func stepForward(_ input: Int) -> Int {
    return input + 1
}

func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}
var currentValue = 3
let moveNearToZero = chooseStepFunction(backward: currentValue > 0)

moveNearToZero(3) // StepBackward function

// Nested Functions

func chooseStepFunction2(backward: Bool) -> (Int) -> Int {
    func stepForward2(input: Int) -> Int {return input + 1}
    func stepBackward2(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward2 : stepForward2
}






