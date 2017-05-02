//: Playground - noun: a place where people can play

import UIKit

// Map
// Use map to loop over a collection and apply the same operation to each element in the collection.

let values = [2.0,4.0,5.0,7.0]
var squares:[Double] = []
for value in values {
  squares.append(value * value)
}
print(squares)

let mapSquares = values.map { $0 * $0 }
print(mapSquares)

let squares2 = values.map({
  (value: Double) -> Double in
    return value * value
})

print(squares2)

let scores = [0,28,124]

//let words = scores.map { NumberFormatter.localizedString(from: $0, number: .spellOut) }


let milesToPoint = ["point1":120.0,"point2":50.0,"point3":70.0]
let kmToPoint = milesToPoint.map { name,miles in miles * 1.6093 }
print(kmToPoint)


let lengthInMeters = [2.0,4.0,8.9]
let lengthInFeet = lengthInMeters.map { meters in meters * 3.2808 }
print(lengthInFeet)



// Filter
// Use filter to loop over a collection and return an Array containing only those elements that match an include condition.


let digits = [1,4,5,6,2,8]
let even = digits.filter { $0 % 2 == 0 }
print(even)


// Reduce 
// Use reduce to combine all items in a collection to create a single new value.

let items = [2.0,4.0,5.0,7.0]
let total = items.reduce(10.0,+)

let codes = ["abc","cde","efg"]
let text = codes.reduce("", +)


let names = ["alan","brian","charlie"]
let csv = names.reduce("===") { text,name in "\(text),\(name)"}
print(csv)


/// Flat Map


let collections = [ [5,7],[8,2],[3,5,6]]
let flat = collections.flatMap { $0 }
print(flat)

//flatMap remove optionals from the collection

let people:[String?] = ["Tom",nil,"Harry","John"]
let valid = people.flatMap { $0 }
valid


let onlyEven = collections.flatMap {
  intArray in intArray.filter { $0%2 == 0 }
}
onlyEven


let allSquared = collections.flatMap { $0.map { $0 * $0 } }
allSquared

let sums = collections.flatMap { $0.reduce(0,+) }
sums

// Chaining 

let marks = [4,5,8,2,9,7]
let totalPass = marks.filter { $0>=7 }.reduce(0, +)
totalPass

let numbers = [20,17,35,4,12]
let evenSquares = numbers.map { $0 * $0 }.filter { $0%2 == 0 }
evenSquares




let sqaures: (Int) -> Int = { x in x * x }





