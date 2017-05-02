//: Playground - noun: a place where people can play

import UIKit

// Equatable protocol example

let a = [1,3,4]
let b = [2, 3, 4]
let c = [1,3,4]

a == c
a == b

class MyObject: Equatable {
  let a: Int, b : String
  
  init(a: Int,b: String) {
    self.a = a
    self.b = b
  }
  
  static func ==(lhs: MyObject,rhs: MyObject) -> Bool {
    return lhs.a == rhs.a && lhs.b == rhs.b
  }
}

let aObj = MyObject(a: 10, b: "foo")
let bObj = aObj
let cObj = MyObject(a: 10, b: "foo")

aObj == bObj
aObj == cObj

aObj === cObj

struct StreetAdress {
  let number: String
  let street: String
  let unit: String?
  
  init(_ number: String,_ street: String, unit: String? = nil) {
    self.number = number
    self.street = street
    self.unit = unit
  }
}


extension StreetAdress: Equatable {
  static func == (lhs: StreetAdress,rhs: StreetAdress) -> Bool {
    return lhs.number == rhs.number &&
      lhs.street == rhs.street &&
      lhs.unit == rhs.unit
  }
}


let addresses = [StreetAdress("1490", "Grove Street"),
                 StreetAdress("2119", "Maple Avenue"),
                 StreetAdress("1400", "16th Street")]

let home = StreetAdress("1400", "16th Street")

print(addresses[0] == home)
print(addresses.contains(home))



