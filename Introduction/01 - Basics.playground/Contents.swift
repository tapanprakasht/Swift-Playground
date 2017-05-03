//: Playground - noun: a place where people can play

import UIKit

// Constants declaration
let InitialMessage = "Hello World"

// Variable declaration
var numberOfLoginAttempts = 0

// Multiple values

var x = 0, y = 10 , z = 3

// Var with type 

var welcomeMessage : String

welcomeMessage = "Hello Message"

var red, blue, green : String

// Variable name with any unicode character
let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

// Swift Keyword as varibale name using backtick
var `switch` = "ON"

print(InitialMessage)

//String interpolation
print("Initial message is \(InitialMessage)")

// Integers

var a: Int ; let b : String

let minValue = Int8.min
let maxValue = Int8.max

let minValue1 = Int.min
let maxValue1 = Int.max

let minValue2 = UInt.min
let maxValue2 = UInt.max


// Floating point numbers

var f : Float = 2.34232
var g : Double = 4.232423
var h : Int = 2


let binaryNumber = 0b1001

// Int to Float explicit conversion
var firstNum = 3.232
var secondNum = 3

let result = firstNum + Double(secondNum)


typealias AudioSample = UInt16

print(AudioSample.min)

// Booleans

let orangesAreOrange = true

if orangesAreOrange {
    print("True")
} else {
    print("False")
}

// Tuples

let http404Error = (404, "Not Found")


let (statusCode, statusMessage) = http404Error

print("Status code is \(statusCode)")
print("Status message is \(statusMessage)")

// Getting only one item from tuple by ignoring others

let (justStatusCode, _) = http404Error
print("Just status code is \(justStatusCode)")

// Accessing individual elements

print("Status code is \(http404Error.0)")
print("Status Message is \(http404Error.1)")


// Individual elements with name
let http200Status = (statusCode : 200 , statusMsg : "OK")

print("Status code is \(http200Status.statusCode)")
print("Status message is \(http200Status.statusMsg)")



/// Optionals

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

type(of:possibleNumber)
type(of:convertedNumber)

var serverResponseCode : Int?  = 404

serverResponseCode = nil

var surveyAnswer: String?

// Forced unwrapping of optionals
if convertedNumber != nil {
    print("Converted number has an integer value of \(convertedNumber!)")
}

// Optional binding

if let actualNumber = Int(possibleNumber) {
    print("\(possibleNumber) has an integer value of \(actualNumber)")
} else {
    print("\(possibleNumber) number could not converted to an integer")
}


if let firstNumber = Int("4"), let secondNumber = Int("42") {
    print("\(firstNumber) , \(secondNumber)")
}

// Implicitty unwrapped optionals
let possibleString : String? = "An optional string"
let forcedString: String = possibleString!

let assumedString:String! = "An implicitly unwrapped optional"
let implicitString: String = assumedString

// Assertions
let age = 3
assert(age>=0, "Age must be greater than zero")







