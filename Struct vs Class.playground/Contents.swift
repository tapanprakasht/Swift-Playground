//: Playground - noun: a place where people can play

// Class(Reference type) Vs Struct (Value type)


class HumanClass {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}


var humanObject = HumanClass(name: "Tapan")
humanObject.name

var newHumanObject = humanObject
newHumanObject.name

newHumanObject.name = "abcd"

humanObject.name



struct HumanStrct {
    var name: String
}

var humanStrctObj = HumanStrct(name: "Tapan")
humanStrctObj.name

var newHumnaStrct = humanStrctObj
newHumnaStrct.name = "abcd"

humanStrctObj.name


