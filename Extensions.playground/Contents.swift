//: Playground - noun: a place where people can play


extension String {
    func sayHello() -> String {
        return "Hello from String"
    }
}


let myName = "Tapan"
myName.sayHello()

extension Int {
    var squared: Int {
        return self * self
    }
}

var newInt = 30
newInt.squared


class Rectangle {
    var width : Int
    var height: Int
    
    init(w: Int,h: Int) {
        width = w
        height = h
    }
}


extension Rectangle {
    func calculateArea() -> Int {
        return width * height
    }
}

var rect = Rectangle(w: 10, h: 30)

rect.calculateArea()




