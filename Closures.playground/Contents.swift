//: Playground - noun: a place where people can play

import UIKit

// Closures in Swift


func addTwoNumbers(number1: Int,number2: Int) -> Int {
  return number1 + number2
}

var storedFunc = addTwoNumbers
storedFunc(2,3)
storedFunc(3,4)

var storedClosure: (Int,Int) -> Int = { (num1,num2) in
  return num1 + num2
}

storedClosure(2,3)

// short closure
var storedClosure1: (Int,Int) -> Int = { return $0 + $1 }
storedClosure1(1,2)

// Super short closure
var storedClosure2: (Int,Int) -> Int = { $0 + $1 }
storedClosure2(2,3)


func insertSomething(closure: () -> String) {
  closure()
}

func returnHelloWorld() -> String {
  print("Hello World")
  return "Hello World"
}

insertSomething(closure: returnHelloWorld)

var closureHelloWorld: () -> String = { return "Hello World" }
insertSomething(closure: closureHelloWorld)


// Part 2

// function
func timesTenFunc(number: Int) -> Int { return number * 10 }

// closure
var timesTenClsoure: (Int) -> Int = { $0 * 10 }

timesTenClsoure(10)
timesTenFunc(number: 10)

func sum(from: Int,to: Int, closure: (Int) -> Int) -> Int {
  var sum = 0
  for i in from...to {
    sum += closure(i)
  }
  return sum
}

sum(from: 0, to: 10, closure: timesTenClsoure)
sum(from: 0, to: 10, closure: timesTenFunc)

// Longer version
sum(from: 0, to: 10, closure: { number in return number * 10})

// Shorter version 
sum(from: 0, to: 10, closure: { $0 * 10 })


// Trailing closure
// Just like the sum example above, a trailing closure can be used only if a function requires a closure as the final argument/parameter. 

// Trailing closure longer version
sum(from: 0, to: 10) { (number) in
  return number * 10
}

// Trailing closure shorter version
sum(from: 0, to: 10){ return $0 * 10 }

// Trailing closure extremely shorter version.
sum(from: 0, to: 10) { $0 * 10 }


// Completion Handlers

func downloadFromUrl(url: NSURL, completionHandler: (Bool) -> Void) {
  completionHandler(true)
}


downloadFromUrl(url: NSURL(string: "myurl")!, completionHandler: { isSuccessful -> Void in
  if isSuccessful {
    print("Download completed")
  } else {
    print("Failed to download")
  }
})









