//: Playground - noun: a place where people can play

import UIKit

struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}


var rangeOfThreeItems = FixedLengthRange(firstValue: 6, length: 9)

rangeOfThreeItems.firstValue = 8

let rangeOfFourItems = FixedLengthRange(firstValue: 10, length: 8)


class DataImporter {
    var fileName = "data.txt"
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}


// Computed Properties
struct Cuboid {
    var width = 0.0,height = 0.0, depth = 0.0
    var volume: Double {
        return width * height * depth
    }
}

let myCuboid = Cuboid(width: 4.0, height: 4.0, depth: 4.0)

print("\(myCuboid.volume)")

// Property observer


class StepsCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps){
            print("About to set total steps to \(newTotalSteps)")
        }
        
        didSet{
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}


let stepCounter = StepsCounter()
stepCounter.totalSteps = 200

stepCounter.totalSteps = 360


// Type properties

class SomeClass {
    static var storedProperty = "myString"
}

SomeClass.storedProperty

let myClass = SomeClass()

