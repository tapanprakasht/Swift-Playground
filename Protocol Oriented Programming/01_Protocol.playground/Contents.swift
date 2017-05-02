//: Playground - noun: a place where people can play
import Foundation

protocol Humanable {
  var name: String { get set }
  var isAlive: Bool { get set }
  
  func sayHi()

}


struct Human: Humanable {
  var name: String = "Bob"
  var isAlive: Bool = true
  
  func sayHi() {
    print("Hello")
  }
}


protocol FindArea {
  var area: Double { get set }
}

struct Square: FindArea {
  var side: Double = 100
  var area: Double {
    get {
      return side * side
    }
    
    set {
      side = sqrt(newValue)
    }
  }
}


var ten = Square(side: 10)
ten.area
ten.area = 225
ten.side


