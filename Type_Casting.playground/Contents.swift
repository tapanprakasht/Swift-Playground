//: Playground - noun: a place where people can play


// Type casting

class BaseClass {
    var baseProp = 123
}

class ChildClass: BaseClass {
    var childProp = 2345
}


var childObject = ChildClass()
childObject.childProp
childObject.baseProp


// Type up casting
var newChildClass = childObject as BaseClass
newChildClass.baseProp

// Up casting will always work

var myName = "Bob" as Any
var myAge = 23 as Any

var newArray = [myAge, myName]

// Downcasting 


class MediaItem {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}


class Movie: MediaItem {
    var director: String
    
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}


class Song: MediaItem {
    var artist: String
    
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}


let library = [
    Movie(name: "M1", director: "01"),
    Movie(name: "M2", director: "02"),
    Song(name: "S1", artist: "A1"),
    Song(name: "S2", artist: "A2")
]

// Optional Downcasting

for item in library {
    
    if let movie = item as? Movie {
        print("Movie \(movie.name) \(movie.director)")
    }
    
    if let song = item as? Song {
        print("Song \(song.name) \(song.artist)")
    }
}


// Force Downcasting

//for item in library {
//    var movie = item as! Movie
//    print(movie.director)
//    print(movie.name)
//}
//






