//: Playground - noun: a place where people can play

import UIKit

struct Fahrenheit {
    var temperature: Double
    
    init() {
        temperature = 32.0
    }
}

var f = Fahrenheit()
f.temperature


struct Celsius {
    var temperatureInCelsius: Double
    
    init(fromFahrenheit farhenheit:Double) {
        temperatureInCelsius = (farhenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
}

let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)

let freezingPointOfWater = Celsius(fromKelvin: 273.15)

//class MyClass {
//    var name
//    var
//}

let time = "22:02:00"
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "HH:mm:ss"

var fullDate = dateFormatter.date(from: time)
dateFormatter.dateFormat = "hh:mm:ss"
var time2 = dateFormatter.string(from: fullDate!)




