enum Level {
    case low,medium,high
}
var myLevel = Level.high
switch myLevel {
    case .high:
        print("This is high Level")
    case .medium:
        print("This is medium Level")
    case .low:
        print("This i low Level")
    default:
        print("Not a Level") 
}
print("-----")

enum UIColor {
    case red,green,black
}
enum AppleDevice {
    case appleWatch(String, UIColor)
    case iphone(Float, UIColor)
}
var myDevice = AppleDevice.appleWatch("sport 42mm", UIColor.green)
switch myDevice {
    case let .appleWatch(name, color):
        print("myDevice is appleWatch with name: \(name), color: \(color)")
    case let .iphone(version, color):
        print("myDevice is iphone with version: \(version), color: \(color)")
    default:
        print("Not appleWatch or iphone")
}
print("-----")

enum AmimalIcons:Character {
    case dog = "🐕"
    case cat = "🐈"
    case tiger = "🐅"
    case gorilla = "🦍"
}
print("dog icon is: \(AmimalIcons.dog.rawValue)")
print("-----")
