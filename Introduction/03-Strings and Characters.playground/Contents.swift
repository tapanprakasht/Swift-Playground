//: Playground - noun: a place where people can play

import UIKit

// Strings and Characters


// Empty String
var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    print("Empty string")
}

// Mutability

var variableString = "Hello "
variableString + "World"

for char in variableString.characters {
    print(char)
}

// Characters

let exclamationMark: Character = "!"
let catCharacters:[Character] = ["a","b","c","d","e","f"]
let catString = String(catCharacters)
print(catString)

// Concatenation
let firstString = "First string"
let secondString = "Second String"
let finalString = firstString + secondString

variableString += firstString

variableString.append(exclamationMark)

let dollarSign = "\u{24}"

// Character count
print("Character count is \(variableString.characters.count)")

variableString.startIndex
variableString.endIndex

// Accessing String

var welcomeString = "Hello World"
welcomeString.startIndex

welcomeString[welcomeString.index(after: welcomeString.startIndex)]

for index in welcomeString.characters.indices {
    print(welcomeString[index])
}


// Inserting and Removing

welcomeString.insert("!", at: welcomeString.endIndex)
welcomeString.insert(contentsOf: "there".characters, at: welcomeString.endIndex)

//welcomeString.remove(at: welcomeString.index(before: welcomeString.endIndex))


let range = welcomeString.index(welcomeString.endIndex, offsetBy: -6)..<welcomeString.endIndex
welcomeString.removeSubrange(range)


// Comparison

let first = "abcd"
let second = "abcd"
if first == second {
    print("Strings are equal")
}

// Prefix and suffix

if welcomeString.hasPrefix("Hello") {
    print("\(welcomeString) has a prefix Hello")
}

if welcomeString.hasSuffix("World") {
    print("\(welcomeString) has a suffix World")
}

let dogString = "Dog‼🐶"

for char in dogString.characters {
    print("\(char)")
}


