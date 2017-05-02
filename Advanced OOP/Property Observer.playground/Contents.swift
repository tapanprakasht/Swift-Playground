//: Playground - noun: a place where people can play

// Property Observer
struct AsianStudent {
  var GPA: Double {
    willSet(newGPA) {
      print("GPA is going to change to \(newGPA)")
    }
    
    didSet {
      print("GPA changed")
      if GPA > oldValue {
        print("Your GPA increased by \(GPA - oldValue)")
      }
    }
  }
}

var bob = AsianStudent(GPA: 8)
bob.GPA = 9



