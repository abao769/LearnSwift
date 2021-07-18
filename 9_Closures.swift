var animals = [ "fish", "cat", "dog", "chicken" ]
var sortedAnimals = animals.sorted(by: { (s1: String, s2: String) -> Bool in
        return s1 < s2
})
print("sortedAnimals: \(sortedAnimals)")
print("-----")

func handleSort(s1:String, s2:String) -> Bool {
    return s1 > s2
}

sortedAnimals = animals.sorted(by: handleSort)
print("sortedAnimals: \(sortedAnimals)")
print("-----")

let someNubers = [1,3,4,5,9,7]
var squaredNumber = someNubers.map { (someNuber) -> Int in//map để lặp duyệt qua từng phần tử đồng thời sử dụng các phép biến đổi để thay đổi giá trị của từng phần tử
    return someNuber * someNuber
}
print("squaredNumber: \(squaredNumber)")
print("-----")

var strings = someNubers.map { (someNuber) -> String in
    return "\(someNuber) point"
}
print(strings)
print("-----")

func doTask1(completionHandler: @escaping(_ responseString: String, _ errorCode: Int) -> Void) {
    print("do task 1")
    completionHandler("success", 200)
}
doTask1 { (responseStr, errCode) in
    print("This task do after task 1. ResponseString: \(responseStr), errorCode: \(errCode)")
}
print("-----")

let doHardWork = {
    print("This is a hard work")
}
print("Do task A")
doHardWork()
print("-----")

func doSomeWork(hardWork: @autoclosure() -> Void) {
    print("befor autoclosure")
    hardWork()
}
doSomeWork(hardWork: print("I do hard work. I am inside autoclosure"))
