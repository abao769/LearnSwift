import Foundation
class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}
class Song:MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name:name)
    }
}
class Movie:MediaItem {
    var director: String
    init(name:String,director: String) {
        self.director = director
        super.init(name:name)
    }
}
var mediaLists:[MediaItem] = [
    Movie(name:"Star wars",director:"George Lucas"),
    Song(name:"All Of Me",artist:"Jonh Legend"),
    Movie(name:"The Matrix",director:"Lana Wachowski")
]
var numberOfMovie = 0
var numberOfSongs = 0
for eachMedia in mediaLists {
    if eachMedia is Song {
        numberOfSongs += 1
    } else if eachMedia is Movie {
        numberOfMovie += 1
    }
}
print("numberOfSongs: \(numberOfSongs)")
print("numberOfMovie: \(numberOfMovie)")
print("-----")
for eachMedia in mediaLists {
    if let movie = eachMedia as? Movie {//as? ep kieu lui ve tu cha lui ve con
        print("Movie: \(movie.name), director: \(movie.director)")
    } else if let song = eachMedia as? Song{
        print("Song: \(song.name), artist: \(song.artist)")
    }
}
print("-----")
var things = [Any]()
things.append(123)//int
things.append(123.5)//double
things.append(M_PI)
things.append("Dog")//string
things.append((1.5,5.4))//tuple
things.append(Song(name:"All Of Me",artist:"Jonh Legend"))//object
things.append({(name: String) -> String in "Hello, \(name)"})//closure
for thing in things {
    switch thing {
        case let anInteger as Int:
            print("Int value: \(anInteger)")
        case let anDouble as Double:
            print("Double value: \(anDouble)")
        case let anString as String:
            print("String value: \(anString)")
        case let (x,y) as (Double,Double):
            print("Tuple value x: \(x), y: \(y)")
        case let aObjSong as Song:
            print("Song name: \(aObjSong.name) ,artist: \(aObjSong.artist)")
        case let aClosure as (String) -> String:
            print("Closure: \(aClosure("Any"))")
        default:
            print("something else")
    }
}