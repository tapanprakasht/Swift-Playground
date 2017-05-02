//: Playground - noun: a place where people can play


protocol Fightable {
  func start()
}

extension Fightable {
  func start() {
    print("Startt")
  }
  
  func legKick() {
    print("Booom")
  }
}


struct Kangaroo: Fightable {
  
}

class NewKangaroo: Fightable {
  
}


var alphaKangaroo = Kangaroo()
alphaKangaroo.legKick()
alphaKangaroo.start()

var betaKangaroo = NewKangaroo()
betaKangaroo.legKick()
betaKangaroo.start()

