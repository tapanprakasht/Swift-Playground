//: Playground - noun: a place where people can play

import UIKit

// Methods

class Counter{
    var count = 0
    
    func increment() {
        count += 1
    }
    
    func increment(by amount:Int) {
        count += amount
    }
    
    func reset() {
        count = 0
    }
}

// Counter class has three instance methods

let counter = Counter()

counter.increment()
counter.count
counter.increment(by: 5)
counter.count
counter.reset()
counter.count


struct Point {
    var x = 0.0, y = 0.0
    
    func isToTheRightOfX(x: Double) -> Bool {
        return self.x > x
    }
}

// self prefix
let somePoint = Point(x: 4.0, y: 5.0)
if somePoint.isToTheRightOfX(x: 1.0) {
    print("Point is right of x")
}


// Mutating function


struct Point2 {
    var x = 0.0, y = 0.0
    
    mutating func moveBy(x deltaX: Double,y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}

var somePoint2 = Point2(x: 1.0, y: 1.0)
somePoint2.moveBy(x: 2.0, y: 3.0)
print("The point is now at (\(somePoint2.x), \(somePoint2.y))")


// Type Methods

class SomeClass {
    static var level = 0
    class func someMethod() {
        print("This is class method")
    }
}

SomeClass.someMethod()

let someClass = SomeClass()






