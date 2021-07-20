import Foundation
struct Fruit {
    enum RedFruit:Character {
        case apple="🍎", watermelon="🍉",tomato="🍅"
        enum Size: Int{
            case small = 0,medium,big
        }
    }
    var myFruit:RedFruit?
    var myFruitSize:RedFruit.Size?
    var description:String {
        return "myFruit: \(myFruit?.rawValue), Size: \(myFruitSize?.rawValue)"
    }
}
print(Fruit.RedFruit.tomato.rawValue)
print(Fruit.RedFruit.Size.medium.rawValue)
print("-----")
var fruit = Fruit()
fruit.myFruit = Fruit.RedFruit.watermelon
fruit.myFruitSize = Fruit.RedFruit.Size.big
print(fruit.description)