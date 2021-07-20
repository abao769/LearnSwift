import Foundation
struct MultiplicationTable {
    let multiplier:Int 
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}
let mt = MultiplicationTable(multiplier: 2)
for i in 1..<10 {
    print("\(i) x 2 = \(mt[i])")
}
print("-----")
struct AnimalMatrix {
    var animals = [
        ["🐒", "🦍", "🐖"],
        ["🐕", "🦇", "🦨", "🐉"]
    ];
    subscript(row: Int,column: Int) -> String {
        get {
            assert(animals[row][column] != nil, "no animal found")
            return animals[row][column]
        }
        set {
            assert(animals[row][column] != nil, "cannot set value because it is out of range")
            animals[row][column] = newValue
        }
    }
}
var am = AnimalMatrix()
print(am[1, 3])
am[0, 2] = "🐫"
print(am)
