//: Playground - noun: a place where people can play

import Foundation


struct Square {
  var side: Double
  var area: Double {
    get {
      return side * side
    }
    
    set {
      side = sqrt(newValue)
    }
  }
}

var  twoByTwo = Square(side: 2)
twoByTwo.area
twoByTwo.side


var anotherSqr = Square(side: 5)
anotherSqr.area

anotherSqr.area = 400
anotherSqr.side


