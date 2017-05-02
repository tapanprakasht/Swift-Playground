//: Playground - noun: a place where people can play

import UIKit

// Generics

let stringArray = ["1","2","3"]
let intArray = [1,2,3,]


func printStringArray(a:[String]) {
  for i in a {
    print(i)
  }
}

func printIntArray(a: [Int]) {
  for i in a {
    print(i)
  }
}

printStringArray(a: stringArray)
printIntArray(a: intArray)


func printAnything<T>(value: T) {
  print(value)
}


printAnything(value: "Tapan")
printAnything(value: 1)
printAnything(value: 2.434)


func printElement<T>(array: [T]) {
  for i in array {
    print(i)
  }
}


printElement(array: stringArray)
printElement(array: intArray)



struct Family {
  var members: [String]
  
  mutating func push(name: String) {
    members.append(name)
  }
  
  mutating func pop() -> String {
    return members.removeLast()
  }
}



struct SavageFamily<T> {
  var members = [T]()
  
  mutating func push(name: T) {
    members.append(name)
  }
  
  mutating func pop() -> T {
    return members.removeLast()
  }
}



var myFam = SavageFamily<String>()
var numFam = SavageFamily<Int>()

myFam.members = ["Father","Mother","Brother"]
myFam.push(name: "GrandPa")

numFam.members = [1,3,4,5]
numFam.push(name: 4)


let friendFam = SavageFamily(members: ["ab","b","c"])
let trueFamily = SavageFamily(members: [true,false,true])


extension SavageFamily {
  var firstElement: T? {
    if members.isEmpty {
      return nil
    } else {
      return members[0]
    }
  }
}


var tigerFam = SavageFamily<String>()
tigerFam.firstElement

tigerFam.members = ["a","b","c"]

tigerFam.firstElement



