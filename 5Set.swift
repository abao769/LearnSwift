var starWarCharacters: Set<String> = ["Kiem laser", "Tau vu tru"]//danh sach khong quan tam thu tu
if (starWarCharacters.isEmpty){
    print("Khong co phan nao")
} else {
    print("Co \(starWarCharacters.count) phan tu")
}
starWarCharacters.insert("Sung")//them "Sung" khong quan tam vi tri
print(starWarCharacters.sorted())//Sap xep theo bang chu cai

if starWarCharacters.contains("Dao") {
    print("Co dao")
} else {
    print("Khong co dao")
}

for starWarCharacter in starWarCharacters {
    print("starWarCharacter = \(starWarCharacter)")
}

let set1: Set = [1,2,3,4,5,6]
let set2: Set = [1,5,9,3,8,7]
let resultSet1 = set1.intersection(set2).sorted()
print("Giao cua 2 set: \(resultSet1)")
let resultSet2 = set1.union(set2).sorted()
print("Hop cua 2 set: \(resultSet2)")
let resultSet3 = set1.subtracting(set2).sorted()
print("Hieu cua set1 - set2: \(resultSet3)")
let resultSet4 = set1.symmetricDifference(set2).sorted()
print("Cac phan tu khong trung nhau cua set1, set2: \(resultSet4)")

let fruits:Set = ["🍌", "🥥", "🍉"]
let fruitsAndDrinks:Set = ["🍌", "🥥", "🍉","🍅","🥛","🍶","🍸"]
if fruitsAndDrinks.isSuperset(of: fruits) {
    print("fruitsAndDrinks la cha cua fruits")
} else {
    print("fruitsAndDrinks khong phai cha cua fruits")
}
if fruits.isSubset(of: fruitsAndDrinks) {
    print("fruits la con cua fruitsAndDrinks")
} else {
    print("fruits khong phai con cua fruitsAndDrinks")
}
let animals: Set = ["🐕","🐈","🐎"]
if fruits.isDisjoint(with: animals) {
    print("Khong co phan tu chung")
} else {
    print("Co phan tu chung")
}


