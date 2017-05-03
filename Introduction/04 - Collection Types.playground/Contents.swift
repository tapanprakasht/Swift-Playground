//: Playground - noun: a place where people can play

import UIKit

// Array

var someInts = [Int]()
print("SomeInts of containd \(someInts.count) items")
var someInts1 = Array<Int>()
print("SomeInts1 contains \(someInts1.count) items")
someInts.append(0)
someInts.append(1)

var threeDoubles  = Array(repeating: 3.4 , count: 3)
var anotherThreeDoubles = Array(repeating: 2.4 ,count: 3)
var sixDoubles = threeDoubles + anotherThreeDoubles

var shoppingList: [String] = ["Eggs","Milk"]

var shoppingList1 = ["Milk", "Eggs"]


if shoppingList.isEmpty {
    print("Shopping list is empty")
} else {
    print("Shopping list is not empty")
}

shoppingList.append("Flour")

var firstItem = shoppingList[0]

shoppingList[0] = "Siz Eggs"

shoppingList[0...1] = ["abc","dfasf"]

shoppingList.insert("Apple", at: 0)

shoppingList.remove(at: 0)

shoppingList.removeLast()

for item in shoppingList {
    print(item)
}

for (index,value) in shoppingList.enumerated() {
    print("\(index+1) -> \(value)")
}



/// Set

var letters = Set<Character>()
print("letters cointains \(letters.count) items")

letters.insert("a")

var favouriteGenres: Set<String> = ["Rock","Classical","Hip Hop"]

var favouriteGeneres: Set = ["Rock","Classical","Hip Hop"]

if favouriteGenres.isEmpty {
    print("Set is empty")
} else {
    print("Set is not empty")
}

favouriteGenres.insert("Jazz")

if let removedGenre = favouriteGenres.remove("Rock") {
    print("\(removedGenre) is removed")
} else {
    print("Set not contain Rock")
}

if favouriteGenres.contains("Hip Hop") {
    print("Set contains Hip Hop")
} else {
    print("Not containg Hip Hop")
}

for genre in favouriteGenres {
    print("\(genre)")
}

for genre in favouriteGenres.sorted() {
    print("\(genre)")
}

let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]
let singleDigitPrimeNumbers: Set = [2,3,5,7]

oddDigits.union(evenDigits).sorted()
oddDigits.intersection(evenDigits).sorted()
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()



let countingNumbers: Set = [1,2,3,4,5,6,7,8,9]
let setA: Set = [1,2,3]
setA.isSubset(of: countingNumbers)
setA.isSuperset(of: countingNumbers)


// Dictionaries

var nameOfIntegers = [Int: String]()
nameOfIntegers[16] = "Sixteen"
nameOfIntegers = [:]

var airports:[String: String] = ["XYZ":"India","ABC":"US"]
print("Airports dictionary contains \(airports.count) items")

if airports.isEmpty {
    print("Dictionary is not empty")
} else {
    print("Dictionary is empty")
}
airports["LHR"] = "London"


if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("\(oldValue)")
} else {
    print("New value updated")
}

if let airportName = airports["DUB"] {
    print("Airport name : \(airportName)")
} else {
    print("No such airport")
}

if let removedValue = airports.removeValue(forKey: "DUB") {
    print("Removed value \(removedValue)")
} else {
    print("Airport name not in dictionary")
}

for (airportCode,airportName) in airports {
    print("\(airportCode) -> \(airportName)")
}

for airportCode in airports.keys {
    print("\(airportCode)")
}

for airportName in airports.values {
    print("\(airportName)")
}

let airportCodes = [String](airports.keys)
let airportName = [String](airports.values)

// Sorted keys

print("Sorted airport Codes")
for airportCodes in airports.keys.sorted() {
    print("\(airportCodes)")
}



