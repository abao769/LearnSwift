import Foundation
struct Patient {
    var name: String
    let yearOfBirth: Int
}
var aPatien = Patient(name: "Ha",yearOfBirth: 1997)
aPatien.name="Kai"
class MovieManager {
    lazy var getOnMovieName: String = { //lazy: chi chay khi getOnMovieName duoc goi
        print("do hard work...")
        return "Star War"
    }()
}
let manager = MovieManager()
print("get 1 movie: \(manager.getOnMovieName)")

struct Calculation {
    var x: Double
    var squaredX: Double {
        get {
            return x * x
        }
        set {
            print ("new value: \(newValue)")
            x = sqrt(newValue)
        }
    }
    var cubeX:Double {
        return x * x * x
    }
    var step:Int = 0  {
        willSet(newStep) {
            print("Before set value: \(newStep)")
        }
        didSet {
            print("After set value: \(step), old value: \(oldValue)")
        }
    }
}
var calculation = Calculation(x: 5, step: 1)
print("squared: \(calculation.squaredX)")
calculation.squaredX = 144
print("x now : \(calculation.x)")
print(calculation.cubeX)
calculation.step = 123
class Computation {
    static var title = "this is Calculation"
    static let pi:Float = 3.14
    static var squaredPi: Float {
        return pi * pi
    }
}
print("title = \(Computation.title)")
print(Computation.pi)
print(Computation.squaredPi)

