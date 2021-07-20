protocol DetailInformationProtocol {
    //    Property Requirements
    var fullName: String { get }//phai thuc thi moi dc su dung
    //Method Requirements
    func showDetail() -> String
}
//Example of a class "conforms a protocol"
class User: DetailInformationProtocol {
    var firstName: String
    var lastName: String
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    //must implement property in Protocol
    var fullName: String {//thuc thi fullName
        return firstName + lastName
    }
    func showDetail() -> String {
        return "Firstname = \(firstName), lastName = \(lastName)"
    }
}
var mrA = User(firstName: "Nguyen", lastName: "A")
print(mrA.firstName,mrA.lastName)
print("-----")
//Example of "Mutating Method Requirements"
protocol TogglableProtocol {
    //Mutating Method Requirements
    mutating func toggle()
}
enum Switcher: TogglableProtocol {
    case on, off
    mutating func toggle() {
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
}
var lightSwitch = Switcher.off
lightSwitch.toggle()
print(lightSwitch)
lightSwitch.toggle()
print(lightSwitch)
print("-----")
//Initializer Requirements
protocol InitializationProtocol {
    init(name: String)
}
class Animal {
    
}
//class Bird kế thừa từ Animal và tuân theo giao thức InitializationProtocol
class Bird: Animal,InitializationProtocol {
    var name: String
    required init(name: String) {
        self.name = name
    }
}
let aBird = Bird(name: "Kiki")