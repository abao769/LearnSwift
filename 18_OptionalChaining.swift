import Foundation
class User {
    var name: String
    var readingBook: Book?
    init(name: String) {
        self.name = name
    }
}
class Book {
    var numberOfPages = 5000
}
var mrT = User(name: "Nguyen T")
mrT.readingBook = Book()
if let numberOfPages = mrT.readingBook?.numberOfPages {
    print("Book of \(mrT.name) has \(numberOfPages) pages")
} else {
    print("Failed to get of pages")//tra ve neu mrT.readingBook = nil
}
print("-----")
class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func detailAddress() -> String? {
        if let buildingName = buildingName, let buildingNumber = buildingNumber, let street = street {
            return ("\(buildingName), \(buildingNumber), \(street)")
        } else {
            return nil
        }
    }
}
let address = Address()
address.buildingName = "Moon Building"
address.buildingNumber = "0000"
address.street = "Sun"
if let detailAddress = address.detailAddress() {
    print(detailAddress)
} else {
    print("Cannot get detail address")
}
print("-----")
//hoac
if address.detailAddress() != nil {
    print(address.detailAddress())
} else {
    print("Cannot get detail address")
}
print("-----")
var testScores = [
    "Dog": [13, 25, 8],
    "Cat": [6, 10, 14]
]
testScores["Dog"]?[2] = 20//key "Dog" tai vi tri 2 gan bang 20 (co the nil)
print(testScores)
testScores["Dog1"]?[2] = 20//khong thay key "Dog1" nen tra ve gia tri truoc do
print(testScores)
