import Foundation
protocol ExampleDelegate {
    func method1()
}
//Ủy quyền cho phép một lớp hoặc cấu trúc ủy quyền một số trách nhiệm của nó cho một thể hiện của kiểu khác
//Class that have delegate property
class ExampleClass {
    var delegate: ExampleDelegate?
    func reloadData() {
        print("running reload data...")
        print("do some tasks in 1 seconds...")
        delegate?.method1()
        print("do some tasks in 3 seconds...")
        
    }
}

class ClassConformDelegate: ExampleDelegate {
    var aProperty: ExampleClass
    init(aProperty: ExampleClass) {
        self.aProperty = aProperty
        self.aProperty.delegate = self
        self.aProperty.reloadData()
    }
    
}
//Adding Protocol Conformance with an Extension
extension ClassConformDelegate {
    //Implement delegate functions
    func method1() {
        print("ClassConformDelegate calls method1")
    }
}

let a = ClassConformDelegate(aProperty: ExampleClass())

protocol TextRepresentable {
    var textualDescription: String {get}
}
class Animal:TextRepresentable {
    var name: String
    init(name: String) {
        self.name = name
    }
    
}
extension Animal {
    var textualDescription: String {
        return "This is an Animal"
    }
}
//Optional Protocol Requirements
@objc protocol ExampleProtocol {
    @objc optional func method3()
    @objc optional var property3: Int { get }
}
class AnExampleClass: ExampleProtocol {
    //Không cần triển khai method3 hoặc property3
}