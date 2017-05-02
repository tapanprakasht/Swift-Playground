
//: Playground - noun: a place where people can play

// Any and AnyObject difference

class Movie {
  var name: String
  var director: String
  
  init(name: String, director: String) {
    self.name = name
    self.director = director
  }
}

class Book {
  var name: String
  var author: String
  
  init(name: String, author: String) {
    self.name = name
    self.author = author
  }
}

var movie1 = Movie(name: "M1", director: "D1")
var book1  = Book(name: "B1", author: "A1")
var myNumber: Int = 121231

var myObjects: [AnyObject] = []
myObjects.append(movie1)
myObjects.append(book1)
//myObjects.append(myNumber)  Cannot append Int beacuse the array is of type AnyObject which is only for class types

var myAnyObjects: [Any] = []   // Array of type Any
myAnyObjects.append(movie1)
myAnyObjects.append(book1)
myAnyObjects.append(myNumber)

for item in myAnyObjects {
  
  if let movie = item as? Movie {
    print("Movie name:\(movie.name),Director: \(movie.director)")
  }
  
  if let book = item as? Book {
    print("Book name:\(book.name),Author: \(book.author)")
  }
  
  if let number = item as? Int {
    print("Number is \(number)")
  }
  
}
