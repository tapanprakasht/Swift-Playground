//: Playground - noun: a place where people can play

struct NuclearRocket {
  var meters: Double
  var liters: Double
  
  init(meters: Double, liters: Double) {
    self.meters = meters
    self.liters = liters
  }
  
  init(ft: Double, gallons: Double) {
    let convertedMeters = ft / 3.28
    let convertedLiters = gallons * 3.79
    
    self.init(meters: convertedMeters, liters: convertedLiters)
  }
}


var rocket = NuclearRocket(meters: 30, liters: 3)
rocket.liters
rocket.meters

var newRocket = NuclearRocket(ft: 20, gallons: 2)
newRocket.liters
newRocket.meters

