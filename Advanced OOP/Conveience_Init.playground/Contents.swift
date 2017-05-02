//: Playground - noun: a place where people can play

class Human {
  var name: String
  var age: Int
  
  init(name: String, age: Int) { // Designated initializer
    self.name = name
    self.age = age
  }
  
  convenience init(name: String) {
    self.init(name: name, age: 20)
  }
  
  convenience init() {
    self.init(name: "Bob", age: 20)
  }
}


var bob = Human(name: "Bob")
bob.age


var rob = Human()
rob.name
rob.age


class Korean: Human {
  var homeTown: String
//  
//  init(name: String, age: Int, homeTown: String) {
//    self.homeTown = homeTown
//    super.init(name: name, age: age)
//  }
  
  override init(name: String, age: Int) {
    self.homeTown = "Seoul"
    super.init(name: name, age: age)
  }
}




var koreanBob = Korean(name: "Bob", age: 20)




