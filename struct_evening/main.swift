//
//  main.swift
//  struct_evening
//
//  Created by dan on 28.03.2023.
//

import Foundation

class User {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    
    init(name: String) {
        self.name = name
        self.age = 10
    }

    
    
    let details = { (name: String, age: Int) in
        return "Имя пользователя: \(name) и возрасть \(age)"
    }

}



struct Person {
    var name: String
    var age: Int

    
    init(name: String) {
        self.init(name: name, age: 0)
    }
    
    init(age: Int) {
        self.init(name: "", age: age)
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    
    func getDetails() -> String {
        return "Имя пользователя: \(name) и возрасть \(age)"
    }
    
    mutating func changeAge(after: Int) {
        self.age = after
    }
}

var classUser1 = User(name: "User1", age: 1)
var classUser2 = User(name: "User2", age: 2)
print(classUser1)
print(classUser2)


var structUser1 = Person(name: "Struct name1", age: 1)
var structUser2 = Person(name: "Struct name2", age: 2)
print(structUser1)
print(structUser2)

print(classUser1.getDetails())
print(structUser1.getDetails())


classUser1.changeAge(after: 35)
structUser1.changeAge(after: 35)

print(classUser1.getDetails())
print(structUser1.getDetails())



extension User {
    
    
    func changeAge(after: Int) {
        self.age = after
    }
    
    
    
}


// MARK нужен для второй функций
extension User {
    
    func getDetails() -> String {
        return "Имя пользователя: \(name) и возрасть \(age)"
    }
    
}


// 1. В структуре есть прямой доступ к полям, а в классе все работает через ссылки
// 2. В структуре можно создавать несколько инициализаторов внутри других инициализаторов, а в классе нельзя
// 3. В структуре если еcть self.название поля нужно присать mutating перед названием метода, в классе не нужно
// 4. Класс поддерживает насселодования, струтуре не поддерживает
// 5. Класс может расширятся через extension, а структура не может


struct Building {
    var length: Int
    var width: Int
    var floors: Int
    var hasBasement: Bool
//
//    init(length: Int, width: Int, floors: Int, hasBasement: Bool) {
//        self.length = length
//        self.width = width
//        self.floors = floors
//        self.hasBasement = hasBasement
//    }

    init(length: Int, width: Int, floors: Int, hasBasement: Bool) {
        self.length = length
        self.width = width
        self.floors = floors
        self.hasBasement = hasBasement
    }
    
    
    func calculateArea() -> Int {
        return length * width * floors
    }
    
    mutating func addFloor() -> Int {
        let afterAdding = self.floors + 1
        self.floors = afterAdding
        return afterAdding
    }
    
    mutating func subtractFloor() -> Int {
        let afterAdding = self.floors - 1
        self.floors = afterAdding
        return afterAdding
    }
    
//    func addFloor() -> Int {
////        self.floors + 1
//    }
}


