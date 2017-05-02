//: Playground - noun: a place where people can play

import UIKit

let main = DispatchQueue.main
let background = DispatchQueue.global()


func doSyncWork() {
  background.sync {
    for _ in 1...4 {
      print("Light")
    }
  }
  
  for _ in 1...4 {
    print("Heavy")
  }
}


func doAsyncWork() {
  background.async {
    for _ in 1...4 {
      print("Light")
    }
  }
  
  for _ in 1...4 {
    print("Heavy")
  }
}



doAsyncWork()
