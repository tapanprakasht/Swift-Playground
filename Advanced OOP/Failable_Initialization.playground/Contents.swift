//: Playground - noun: a place where people can play

// Failable Initializer


class Animal {
  let species: String
  init?(enterSpecies: String) {
    self.species = enterSpecies
    
    if enterSpecies.isEmpty {
      return nil
    }
  }
}


var animal = Animal(enterSpecies: "Monkey")
var anotherAnimal = Animal(enterSpecies: "")

animal?.species
anotherAnimal?.species


if let ani = animal {
  print(ani.species)
}

enum InsectError: Error {
  case tooManyLegs
  case noLegs
}

struct Insect {
  var numberOfLegs: Int
  
  init(enterNumber: Int) throws {
    if enterNumber <= 0 {
      throw InsectError.noLegs
    }
    if enterNumber > 10 {
      throw InsectError.tooManyLegs
    }
    
    self.numberOfLegs = enterNumber
  }
}


// Handle Errors


do {
  var inset = try Insect(enterNumber: -1)
} catch InsectError.tooManyLegs {
  print("Too many legs")
} catch InsectError.noLegs {
  print("No Legs")
}


// try? -> if error thrown, automatically returns nil

var insect = try? Insect(enterNumber: -1)

// try! -> if error thrown, automatically crashes the application

//var anotherInsect = try! Insect(enterNumber: 1231)


