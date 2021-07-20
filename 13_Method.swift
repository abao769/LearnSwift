import Foundation
class Point {
    var x:Float = 0.0
    var y:Float = 0.0
    func moveTo(x: Float, y: Float) {
        self.x = x
        self.y = y
    }
    func toString() -> String {
        return "x: \(self.x), y: \(self.y)"
    }
    func moveAndCreaterNewPoint(x: Float, y: Float) -> Point {
        let newPoint = Point()
        newPoint.moveTo(x: x, y: y)
        return newPoint
    }
}
var myPoint = Point()
myPoint.moveTo(x: 10.5, y:15)
print(myPoint.x,myPoint.y)
print(myPoint.toString())
var newPoint = myPoint.moveAndCreaterNewPoint(x:5, y:10)
if myPoint !== newPoint {
    print("myPoint and newPoint are different")
}
print(newPoint.x, newPoint.y)
enum Compass{
    case east, west, south, north
    mutating func moveToNext() {
        switch self {
            case .east:
                self = .west
            case .west:
                self = .south
            case .south:
                self = .north
            case .north:
                self = .east
        }
    }
}
var compass1 = Compass.east
compass1.moveToNext()
print(compass1)
compass1.moveToNext()
print(compass1)

class Calculator {
    static let pi:Float = 3.14
    static func sum2Numbers(a: Int, b: Int) -> Int {
        return a + b
    }
    class func circleArea(r: Float) -> Float{
        return pi * r * r
    }
}
print("sum 7 + 6 = \(Calculator.sum2Numbers(a: 7, b: 6))")
print("circleArea r = 7 : \(Calculator.circleArea(r: 7))")



