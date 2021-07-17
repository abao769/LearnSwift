let isHero:Bool = true
let check = !isHero
print("\(isHero), \(check)")

let (width, heght) = (800,900)//dinh nghia tuple: danh sach cac bien

let x = 10.0 * 10.0; print("\(x)")
let a = 10.0 / 4.0; print("\(a)")
let b = 10.0 + 10.0; print("\(b)")
let c = 10.0 - 8.0; print("\(c)")

let s1 = "Hello " + "world " + "!"
print("\(s1)")
let y = 3 % 2
print("\(y)")

var ss = 2 != 1
print("\(ss)")
ss = (4, "cat") < (3, "dog")
print("\(ss)")

let isHD = (width,heght) == (1280,720) ? print("HD") : print("not HD")//toan tu bac 3: neu dieu kien "(width,heght) == (1280,720)" la true thi in ra "HD", neu false in ra "not HD"

let age = 10
let myAge = age ?? 18 //neu age == nil thi myAge == 18
print("\(age)")

for index in 1...5 {
    print("index = \(index)")//hien thi cac so tu 1 den 5
}

if (5 < 1 && 3 > 2 ) {
    print("true")
} else {
    print("false")
}

let range = ...7//cac so nho hon hoac bang 7
print("\(range.contains(7))")// xet 7 co thuoc khoang tu 0...7 hay khong

let animals = ["cat", "dog", "tiger"]
for animal in animals[0...] {
    print("animal = \(animal)")//hien thi cac phan tu trong animals khi khong biet co bao nhieu phan tu
}

for animal in animals[0...2] {
    print("animal = \(animal)")//hien thi cac phan tu trong animals tu phan tu 0 den phan tu 2
}
