//: Playground - noun: a place where people can play

import UIKit

struct Resoultion {
    var width = 0
    var height = 0
}

class VideoMode{
    var resoution = Resoultion()
    var intelaced = false
    var frameRate = 0.0
    var name:String?
}

// Memeberwise initializer
let vga = Resoultion(width: 640, height: 480)

let hd = Resoultion(width: 1980, height: 1080)

// Classes are reference type
let tenEighty = VideoMode()
tenEighty.resoution = hd
tenEighty.intelaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0


let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0

print("\(tenEighty.frameRate)")

if tenEighty === alsoTenEighty {
    print("refering to same instance")
}

let anotherEighty = VideoMode()
anotherEighty.resoution = hd
anotherEighty.intelaced = true
anotherEighty.name =  "1080i"
anotherEighty.frameRate = 30.0

if tenEighty === anotherEighty {
    print("Equivalent")
}

var name: String = "My Name"

var secondName = name

name = "Hello "



