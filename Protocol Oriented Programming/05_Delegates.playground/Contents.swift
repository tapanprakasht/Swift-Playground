//: Playground - noun: a place where people can play

// Delegates 


protocol Cookable {
  func makeFood()
}

struct Mom: Cookable {
  func makeFood() {
    print("Making food")
  }
}


var mom = Mom()
mom.makeFood()


struct Baby {
  var delegate: Cookable?
}


var bob = Baby()
bob.delegate = mom

bob.delegate?.makeFood()
bob.delegate?.makeFood()
bob.delegate?.makeFood()
