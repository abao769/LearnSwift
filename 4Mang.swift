var someDoubles = [Double]()
someDoubles.append(100.2)
someDoubles.append(10.5)
print("So cac phan tu: \(someDoubles.count)")

var tenInterger = Array(repeating: 6, count:10)
var twoInterger = Array(repeating: 8, count:2)
print("\(tenInterger) \n\(twoInterger)")
var result = tenInterger + twoInterger
print(result)

var smartPhone = ["iphone", "samsung"]
smartPhone += ["nokia","htc"]
print(smartPhone)
smartPhone.insert("xiaomi", at: 0)//them phan tu "xiaomi" vao vi tri 0
print(smartPhone)
smartPhone.remove(at: 3)
print(smartPhone)

for smartPhones in smartPhone {
    print("Co smartPhone: \(smartPhones)")
}

for (index, value) in smartPhone.enumerated() {
    print("index: \(index + 1), value: \(value)")
}
