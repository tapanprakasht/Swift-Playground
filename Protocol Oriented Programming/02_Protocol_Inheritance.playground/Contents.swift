//: Playground - noun: a place where people can play

// Protocol Inheritance

protocol Mammable {
  var isBreathing: Bool { get set }
  func roar()
}

protocol Humanable: Mammable {
  var isWriting: Bool { get set }
  func chill()
}

struct Bob: Humanable {
  var isBreathing: Bool = true
  var isWriting: Bool = true
  
  func roar() {
    print("Roar")
  }
  
  func chill() {
    print("Chill")
  }
}

protocol Walkable {
  var canWalk: Bool { get set }
}

// Conforming to multiple protocols

class Bobby: Humanable, Walkable {
  var isWriting: Bool = true
  var isBreathing: Bool = true
  var canWalk: Bool = true
  
  func roar() {
    print("Roar")
  }
  
  func chill() {
    print("Chill")
  }
}




