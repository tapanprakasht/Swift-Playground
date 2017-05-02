//: Playground - noun: a place where people can play


import Foundation

let massFormatter = MassFormatter()
massFormatter.unitStyle = .long
massFormatter.isForPersonMassUse = true
massFormatter.string(fromValue: 1000, unit: .kilogram)
massFormatter.unitString(fromValue: 1000, unit: .stone)
massFormatter.string(fromKilograms: 1000)

let lengthFormater = LengthFormatter()
lengthFormater.unitStyle = .medium
lengthFormater.string(fromValue: 100, unit: .kilometer)
lengthFormater.unitString(fromValue: 100, unit: .kilometer)


lengthFormater.unitString(fromValue: 1.0, unit: .centimeter)

Locale.current
