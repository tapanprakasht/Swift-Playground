//: Playground - noun: a place where people can play


protocol Bird {
  var name: String { get }
  var canFly: Bool { get }
}

protocol Flyable {
  var airspeedVelocity: Double { get }
}

extension Bird {
  var canFly: Bool { return self is Flyable }
}
struct FlappyBird: Bird, Flyable {
  let name: String
  let flappyAmplitude: Double
  let flappyFrequency: Double
  
  var airspeedVelocity: Double {
    return 3 * flappyAmplitude * flappyFrequency
  }
}

struct Penguin: Bird {
  let name: String
}

struct SwiftBird: Bird, Flyable {
  var name: String { return "Swift \(version)" }
  let version: Double
  
  // Swift is FASTER every version!
  var airspeedVelocity: Double { return version * 1000.0 }
}

enum UnladenSwallow: Bird, Flyable {
  case african
  case european
  case unknown
  
  var name: String {
    switch self {
    case .african:
      return "African"
    case .european:
      return "European"
    case .unknown:
      return "What do you mean? African or European?"
    }
  }
  
  var airspeedVelocity: Double {
    switch self {
    case .african:
      return 10.0
    case .european:
      return 9.9
    case .unknown:
      fatalError("You are thrown from the bridge of death!")
    }
  }
}

extension UnladenSwallow {
  var canFly: Bool {
    return self != .unknown
  }
}



UnladenSwallow.unknown.canFly
UnladenSwallow.african.canFly
UnladenSwallow.european.canFly


extension CustomStringConvertible where Self: Bird {
  var description:  String {
    return canFly ? "I can fly" : "I can't fly"
  }
}

UnladenSwallow.african


let numbers = [10,20,30,40,50,60]
let slice = numbers[1...3]
let reversedSlice = slice.reversed()

let answer = reversedSlice.map { $0 * 10 }
print(answer)



class Motorcycle {
  init(name: String) {
    self.name = name
    speed = 200
  }
  var name: String
  var speed: Double
}



protocol Racer {
  var speed: Double { get }  // speed is the only thing racers care about
}

extension FlappyBird: Racer {
  var speed: Double {
    return airspeedVelocity
  }
}

extension SwiftBird: Racer {
  var speed: Double {
    return airspeedVelocity
  }
}

extension Penguin: Racer {
  var speed: Double {
    return 42  // full waddle speed
  }
}

extension UnladenSwallow: Racer {
  var speed: Double {
    return canFly ? airspeedVelocity : 0
  }
}

extension Motorcycle: Racer {}

let racers: [Racer] =
  [UnladenSwallow.african,
   UnladenSwallow.european,
   UnladenSwallow.unknown,
   Penguin(name: "King Penguin"),
   SwiftBird(version: 3.0),
   FlappyBird(name: "Felipe", flappyAmplitude: 3.0, flappyFrequency: 20.0),
   Motorcycle(name: "Giacomo")
]




