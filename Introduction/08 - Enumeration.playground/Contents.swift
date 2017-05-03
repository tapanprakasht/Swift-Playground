//: Playground - noun: a place where people can play

import UIKit

enum CompasPoint {
    case north
    case south
    case east
    case west
}

var directionToHead = CompasPoint.north

directionToHead = .south

switch directionToHead {
case .north:
    print("North direction")
case .south:
    print("South direction")
default:
    print("Other direction")
}

enum BarCode {
    case upc(Int,Int,Int,Int)
    case qrCode(String)
}

var productBarcode = BarCode.upc(8, 887, 778, 78)

productBarcode = .qrCode("dfdfadffdsfd")

switch productBarcode {
case .upc(let num,let man,let pro,let check):
    print("\(num),\(man),\(pro),\(check)")
case .qrCode(let productCode):
    print("\(productCode)")
}

enum ASCIICharaters : Character {
    case tab = "\t"
    case linespeed = "\n"
    case carriageReturn = "\r"
}


// Implicitly assigned raw values 

enum Planet: Int {
    case mecury = 1,venus,saturn
}

print(Planet.venus.rawValue)










