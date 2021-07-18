func sum2Number(a: Int, b: Int) -> Int{
    let c = a + b
    return c
}
print("Sum 5 + 4 = \(sum2Number(a:5, b:4))")
print("-----")

func sayHello() -> String {//ham khong thong so dau vao
    return "Hello"
}
print(sayHello())
print("-----")

func sayHello1() {//ham khong co gia tri tra ve
    print("Hello")
}
sayHello1()
print("-----")

func calculateSumAndMultiply(a: Double, b:Double) -> (sum: Double, multiply: Double)? {// ?:gia tri cua sum, multiply co the nil
    return (a + b, a * b)
}
print(calculateSumAndMultiply(a:6,b:3))
print("-----")

if let result = calculateSumAndMultiply(a:2,b:5) {
    print(result)
} else {
    print("result is nil")
}
print("-----")

func multiply2Number(_ a: Float,_ b: Float) -> Float {
    return (a * b)
}
print(multiply2Number(5,8))// _:khong can goi ten bien dau vao
print("-----")

func getRectangleArea(width: Double,height: Double = 240) -> Double {
    return width * height
}
print(getRectangleArea(width:1280))//co the khong can nhap height vi co gia tri mac dinh
print("-----")

func sumNumber(_ numbers: Double...) -> Double {//khong xac dinh co bao nhieu phan tu
    var sum: Double = 0
    for number in numbers {
        sum = sum + number 
    }
    return sum
}
print(sumNumber(1,2,3,6,7))
print("-----")

var string = "Hello"
print("truoc: \(string)")
func inoutFunc(_ a: inout String) {
    a = "World"
}
inoutFunc( &string)
print("sau: \(string)")
print("-----")

func showGreeting() {
    func showHello() {
        print("hello")
    }
    func showQuestion() {
        print("What???")
    }
    showHello()
    showQuestion()
}
showGreeting()
