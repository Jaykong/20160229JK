//: Playground - noun: a place where people can play
import Foundation

class Person {
    var age = 0
    var name = ""
    func description() {
      print(name,age)
    }
}

let person = Person()

person.age = 3
person.name = "kong"

person.description()






