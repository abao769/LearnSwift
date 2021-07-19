import Foundation
struct Shape {
    var width: Float = 0.0
    var height = 0.0
}
var aShape = Shape()
aShape.width = 1080
print("shape's width: \(aShape.width)")
print("shape's height: \(aShape.height)")
print("-----")

var aShape1 = Shape(width: 1280.0, height: 720.0)
var shape2 = aShape1
shape2.width = 240
print("shape's width: \(aShape1.width)")
print("shape2's width: \(shape2.width)")
print("-----")

class User {
    var name = ""
    var universityName: String?
    var myBookShape = Shape(width: 20, height: 40)
}
var user1 = User()
var user2 = user1
var user3 = User()
if (user1 === user2) {
    print("user1 is identical to user2")
}
print("-----")
if (user3 === user2) {
    print("user3 is identical to user2")
} else {
    print("user3 is in different memory location with user2")
}
print("-----")
print("myBook height: \(user3.myBookShape.height), width: \(user3.myBookShape.width)")
