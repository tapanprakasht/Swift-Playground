//: Playground - noun: a place where people can play

var stringArray = ["Hi", "Hello", "Bye"]
var intArray = [1,2,3,4,5]
var doubleArray = [1.2,4.3,2.6]

func printElementsFromArray<T>(a: [T]) {
    for elements in a {
        print(elements)
    }
}


printElementsFromArray(a: stringArray)
printElementsFromArray(a: intArray)
printElementsFromArray(a: doubleArray)


func doNothing<T>(a: T) -> T {
    return a
}


doNothing(a: "123")
doNothing(a: 123)
doNothing(a: 1.32)
doNothing(a: true)




struct GenericArray<T> {
    var items = [T]()
    
    mutating func push(item: T) {
        items.append(item)
    }
}


var arrayFriends = ["ABC", "EFG", "HIG"]

var gArray = GenericArray(items: arrayFriends)

gArray.push(item: "Tap")
gArray.items




class TestClass {
    var items = [String]()
    
    func addItem(item: String) {
        items.append(item)
    }
}


var newTestClass = TestClass()
newTestClass.addItem(item: "Tapan")
newTestClass.items
