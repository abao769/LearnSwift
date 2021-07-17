let pi = 3.14//let khai bao hang khong doi gia tri
var a = 123//khai bao bien co the doi gia tri
a = 456
print("a = \(a), pi = \(pi)")

var name = "Swift", age = 7//khai bao nhieu bien tren mot dong
print("name = \(name), age = \(age)")

var x,y,z: Double//khai bao mot kieu cho nhieu bien trong mot dong
let 📅 = "This is a calendar"//co the su dung emoji de dat ten bien, hang
print("📅: \(📅)")

let oneBillion = 1_000_000_000; print("one billion = \(oneBillion)")

let aNumber:UInt64 = 1000
let anotherNumber:UInt8 = 100
let result = aNumber + UInt64(anotherNumber)//chuyen kieu nguyen duong 8 bit sang kieu nguyen duong 64 bit
print("Result = \(result)")

typealias BigNumber = Double//bi danh
let numberOfAnts:BigNumber = 1_000_000_000
print("numberOfAnts = \(numberOfAnts)")

var numberOfNewMessage:Int? = 10//co the de nil duoc
numberOfNewMessage = nil
print("numberOfNewMessage = \(numberOfNewMessage)")

var ageNumber = -10
//assert(ageNumber>=0,"Tuoi phai lon hon hoac bang 0")// neu dieu kien sai dua ra thong bao loi va chay tiep
print("\(ageNumber)")
//precondition(ageNumber>=0, "Tuoi phai lon hon hoac bang 0")//neu dieu kien sai dua ra thong bao loi va khong chay tiep
print("\(ageNumber)")
