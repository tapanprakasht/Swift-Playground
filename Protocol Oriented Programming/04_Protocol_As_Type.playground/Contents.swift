//: Playground - noun: a place where people can play

// Protocol oriented Programming



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


var structKang = Kangaroo()
var classKang = NewKangaroo()

var kangArray: [Fightable] = [structKang, classKang]


for kang in kangArray {
  kang.legKick()
  kang.start()
}