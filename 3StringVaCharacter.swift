let welcome = """

Hello World !
Learn Swift

\"\"\"
"""//in ra nhieu dong
print(welcome)

//chuoi trong
var aBlankString = ""
aBlankString = String()
print(aBlankString)

//noi chuoi
var aMutableString = "No la con cho 🐕."
aMutableString += " No la con meo 🐈 \u{0A74}"
print(aMutableString)

//in tat ca cac ky tu trong chuoi
for eachCharacter in aMutableString {
    print("character: \(eachCharacter)")
}

//chen 1 ky tu vao phan cuoi chuoi
let questionMark: Character = "?"
aMutableString.append(questionMark)
print(aMutableString)

//chen 1 chuoi vao cuoi chuoi
let aString: String = " ai biet dau"
aMutableString.append(aString)
print(aMutableString)

let width = 10
let squareArea = "Dien tich hinh vuong la: \(width * width)"
print(squareArea)
print("Dien tich hinh vuong la: \(width * width)")

//in ky tu dac biet bang ma unicode
let pilcrowSignMack = "\u{00B6}"
print(pilcrowSignMack)

//in ra phan tu dau cua chuoi//startIndex la phan tu dung dau
var welcomeString = "Hello World"
print(welcomeString[welcomeString.startIndex])

//in ra phan tu cuoi cua chuoi//endIndex la phan tu sau phan tu cuoi
print(welcomeString[welcomeString.index(before: welcomeString.endIndex)])//in ra phan tu truoc endIndex

print(welcomeString[welcomeString.index(after: welcomeString.startIndex)])//in ra phan tu sau startIndex

for index in welcomeString.indices {
    print("eachCharacter = \(welcomeString[index])")
}

//lay ky tu thu 4
print(welcomeString[welcomeString.index(welcomeString.startIndex, offsetBy: 4)])

welcomeString.insert("A", at: welcomeString.endIndex)//chen 1 ky tu vao ky tu cuoi
print(welcomeString)
welcomeString.insert(contentsOf: "ABC", at: welcomeString.index(before: welcomeString.endIndex))//chen nhieu ky tu vao truoc ky tu cuoi
print(welcomeString)

//cat 1 chuoi: cat lay 7 ky tu dau cua chuoi
let someString = "No la con cho"
let indexFrom = someString.startIndex
let indexTo = someString.index(someString.startIndex, offsetBy: 8)
var subString1 = someString[indexFrom...indexTo]
print(subString1)

let subString2 = String(subString1)//Tao mot chuoi subString2 giong subString1 khi subString1 thay doi thi subString2 khong thay doi
subString1 += "ABC"
print(subString2)

//so sanh chuoi
let myLove1 = "I love you"
let myLove2 = "I love you"
if myLove1 == myLove2 {
    print("hai chuoi giong nhau")
}

//xac dinh tien to
let stringWithPrefix = "mr Cat eat rice"
print(stringWithPrefix.hasPrefix("mr Cat"))
//xac dinh hau to
let stringWithPostfix="mr Cat like fish"
print(stringWithPostfix.hasSuffix("fish"))
print(stringWithPostfix.uppercased().hasSuffix("FISH"))//khong phan biet hoa thuong

