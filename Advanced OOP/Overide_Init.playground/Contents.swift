//: Playground - noun: a place where people can play

class Dog {
  var numberOfLegs: Int
  
  init(numberOfLegs: Int) {
    self.numberOfLegs = numberOfLegs
  }
  
  init() {
    self.numberOfLegs = 4
  }
  
  func sayHi() {
    print("Hi, I am a Dog")
  }
}

var bobDog = Dog(numberOfLegs: 4)
bobDog.numberOfLegs
bobDog.sayHi()

var robDog = Dog()
robDog.numberOfLegs
robDog.sayHi()


class Human: Dog {
  override func sayHi() {
    print("I am a Human")
  }
  
  override init() {
    super.init()
    numberOfLegs = 2
  }
  
  override init(numberOfLegs: Int) {
    super.init(numberOfLegs: numberOfLegs)
  }
}

var rob = Human()
rob.numberOfLegs

var bob = Human(numberOfLegs: 4)
bob.numberOfLegs

