//: Playground - noun: a place where people can play

import UIKit

// Inheritance

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "travelling at \(currentSpeed) per miles"
    }
    
    func makeNoise() {
        
    }
}


let vehicle = Vehicle()
vehicle.description

class Bicycle: Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0

print("\(bicycle.currentSpeed)")

// Overiding

class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
}

let train = Train()
train.makeNoise()


class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}

let car = Car()
car.description


// final keyword can prevent overriding


