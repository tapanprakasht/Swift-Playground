//: Playground - noun: a place where people can play

import UIKit


struct TimesTable {
    let multiplyer: Int
    subscript(index: Int) -> Int {
        return multiplyer * index
    }
}


let threeTimesTable = TimesTable(multiplyer: 3)

threeTimesTable[5]
threeTimesTable[2]


class WeeekDays {
    var days = ["Mon", "Tue", "Wed", "Thu","Fri", "Sat", "Sun"]
    subscript(index: Int) -> String {
        return days[index]
    }
}

let weekDays = WeeekDays()
weekDays[3]


struct HealthInfo {
    var info = ["Height" : 163, "Weight": 70, "Fat" : 12.0]
    subscript(key: String) -> Double {
        if let newInfo = info[key] {
            return newInfo
        } else {
            return 0
        }
    }
}


let tapan = HealthInfo()
tapan["Weight"]
tapan["Height"]
