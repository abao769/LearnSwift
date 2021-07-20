import Foundation
/*class Customer {
    let name:String
    init(name:String){
        self.name = name
        print("\(self.name) is being initialized")
    }
    deinit{
        print("\(self.name) is being deinitialized")
    }
    var house:House?
}
var customer1: Customer?
var customer2: Customer?
var customer3: Customer?
customer1 = Customer(name:"Nguyen A")
customer2 = customer1
customer3 = customer1//3 Customer cung tro den bo nho luu tru "Nguyen A"
print("-----")
customer1 = nil
customer2 = nil
customer3 = nil//khong Customer nao tro vao bo nho luu tru "Nguyen A", bo nho dc giai phong
print("-----")
class House {
    var address: String
    init(address:String) {
        self.address = address
    }
    weak var author:Customer?
    deinit{
        print("House at: \(address) is being deinitialized")
    }
}
var mrT:Customer?
var hisHouse:House?
mrT = Customer(name:"Nguyen Van T")
hisHouse = House(address: "Viet Nam")
mrT!.house = hisHouse
hisHouse!.author = mrT
mrT = nil
hisHouse = nil
print("-----")*/
class User {
    let name: String
    var card: CreditCard?
    init(name: String){
        self.name = name
    }
    deinit{
        print("User #\(name) is being deinitialized")
    }
}
class CreditCard {
    let number: UInt64
    unowned var user:User
    init(number:UInt64,user:User){
        self.number = number
        self.user = user
    }
    deinit{
        print("Card #\(number) is being deinitialized")
    }
}
var mrA:User?
var creditCard:CreditCard?
mrA = User(name:"Alex")
creditCard = CreditCard(number:1234_4567_7891_2345, user:mrA!)
mrA!.card = creditCard