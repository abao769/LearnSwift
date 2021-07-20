import Foundation
struct Point0 {
    var x, y: Double
    init() {
        x = 10
        y = 20
    }
}
var p0 = Point0()
print("point detail: x: \(p0.x), y: \(p0.y)")
print("-----")
struct Point {
    var x = 15.0
    var y = 25.0
}
var p = Point()
print("Point detail x: \(p.x), y: \(p.y)")

struct Energy {
    var calories: Float
    init(fromCalories calories: Float) {
        self.calories = calories
    }
    init(fromJuoles juoles: Float) {
        self.calories = 0.000239006 * juoles
    }
    init(_ juoles: Float) {
        self.calories = 0.000239006 * juoles
    }
}
let enery1 = Energy(fromCalories: 150.0)
print("enery1.calories: \(enery1.calories)")
let enery2 = Energy(fromJuoles: 1800.0)
print("enery2.calories: \(enery2.calories)")
print("-----")
class Customer {
    var fullName: String
    var age: Int?
    init(fullName: String) {
        self.fullName = fullName
    }
    func description(){
        print(self.fullName)
    }
}
let customer = Customer(fullName: "Nguyen Van A")
customer.description()
print("-----")
class Person {
    var name: String
    init (name: String){
        self.name = name
    }
    convenience init(){
        self.init(name: "no name")
    }
}
class Employee: Person {
    var staffNumber: String
    init(name: String, staffNumber: String) {
        self.staffNumber = staffNumber
        super.init(name: name)
    }
    convenience override init(name: String) {
        self.init(name: name, staffNumber: "0000")
    }
}
enum Sex {
    case male, famale, other
    init?(sexCharacter: Character) {
        switch sexCharacter {
            case "M":
                self = .male
            case "F":
                self = .famale
            case "O":
                self = .other
            default:
                return nil
        }
    }
}
let sexCharacter1 = Sex(sexCharacter: "M")
print(sexCharacter1)
let sexCharacter2 = Sex(sexCharacter: "K")
print(sexCharacter2)
print("-----")
enum Rank: String {
    case bad = "bad", medium = "medium", good = "good"
}
let rank1 = Rank(rawValue: "bad")
print(rank1)
let rank2 = Rank(rawValue: "verygood")
print(rank2)
