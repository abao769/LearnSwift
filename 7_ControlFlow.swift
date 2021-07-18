for index in 1...10 {
    print("index: \(index)")//in ra cac so tu 1 den 10
}
print("-----")

for _ in 1..<10 {
    print("chicken")// khong su dung bien in ra 9 tu chicken
}
print("-----")

for index in stride(from: 1, to: 10, by: 2){//duyet cac so tu 1 den 10 cac nhau 2 buoc
    print("index: \(index)")
}
print("-----")

var startValue = 0
while startValue < 6 {
    print(" startValue: \(startValue)")
    startValue = startValue + 1
    if startValue == 3 {
        continue// bo qua 3 va tiep tuc
    }
    print("I choose this value: \(startValue)")
}
print("-----")

var startValue1 = 0
while startValue1 < 6 {
    print(" startValue: \(startValue1)")
    startValue1 = startValue1 + 1
    if startValue1 == 3 {
        break //ket thuc chuong trinh khi startValue = 3
    }
    print("I choose this value: \(startValue1)")
}
print("-----")

var startValue2 = 0
repeat{
    print(" startValue: \(startValue2)")
    startValue2 = startValue2 + 1
    print("I choose this value: \(startValue2)")
} while startValue2 < 6
print("-----")

var yourPoint = 6
var estimation:String
switch yourPoint {
    case 0..<2:
        estimation = "very bad"
    case 2..<5:
        estimation = "average"
    case 5..<9:
        estimation = "good"
    case 9..<10:
        estimation = "exellent"
    default:
        estimation = "Not a valid value"
}
print(estimation)
print("-----")

let dogCharacter = "Phoenix"
switch dogCharacter {
    case "Poodle", "Pug", "Corgi", "Pitbull":
        print("\(dogCharacter) is a dog breed")
    case "Abyssinian", "Aegean", "Java","Somali":
        print("\(dogCharacter) is a cat breed")
    case "Phoenix", "Ohiki", "Serama","Brahma":
        print("\(dogCharacter) is a chicken breed")
        fallthrough//di tiep khong break
    default:
        print("\(dogCharacter) is not dog, cat")
}
