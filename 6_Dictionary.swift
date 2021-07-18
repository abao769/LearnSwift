var user:[String:String] = ["name": "A","mail":"a@mail.com"]
var myNumber: [Int:String] = [10:"Ten",1:"one"]
print(myNumber[10])
print("User dictionary has \(user.count) keys")
user["mail"] = "a123@gmail.com"
print(user["mail"])
user.updateValue("ABC@mail.com", forKey: "mail")
print(user["mail"])
//user[:]
if user.isEmpty {
    print(" User dictionary is Empty")
} else {
    print("User dictionary is not Empty")
}

for (myKey,myValue) in user {
    print("key = \(myKey), value = \(myValue)")
}

for eachKey in user.keys { //chi lay cac key
    print("each key: \(eachKey)")
}

for eachValue in user.values { //chi lay cac value
    print("each value: \(eachValue)")
}

let allKeys = [String](user.keys) // tao mang chua key
print(allKeys)

let allValues = [String](user.values) //tao mang chua value
print(allValues)
