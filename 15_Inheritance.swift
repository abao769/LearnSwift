import Foundation
/*final*/class Animal {//final: ngan chan ke thua
    var name: String = ""
    func eat() {
        print("Animal is eating...")
    }
    var description: String {
        return "This is an animal name: \(self.name)"
    }
}
let animal = Animal()
class Cat: Animal {
    var canClimb: Bool = true
    func sayMeo() {
        print("I am saying meo meo")
    }
    override func eat() {
        super.eat()
        print("Cat is eating...")
    }
    override var description: String {
        return "Cat is name is: \(super.description), can climb: \(self.canClimb)"
    }
}

var myCat = Cat()
myCat.name = "Komicho"
myCat.eat()
print(myCat.description)
