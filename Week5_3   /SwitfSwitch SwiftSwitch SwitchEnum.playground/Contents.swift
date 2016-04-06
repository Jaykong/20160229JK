//: switch能使用条件判断吗
let a = 10
let b = 10
switch a == b {
case true:
    print("true")
case false:
    print("false")
    
}
//:OC的Switch支持条件判断吗？
//:不支持，它只支持整型或者是枚举类型，但是本质还是整型

Int.min
Int.max

let condictionalNum = -1
switch condictionalNum {
case 0:
    print("zero")
case 1..<Int.max:
    print("+")
case Int.min ..< 0:
    print("-")
default:
    break
}

//:Switch支持String吗

let switchString = "switchCondition"
switch switchString {
case "switch1" :
    print("s1")
    
case "switch2":
    print("s2")
    
case "switchCondition":
    print("switchCondition")
    
default:
    break
}

//:Switch支持Float吗
let switchFloat = 3.4

switch switchFloat {
case 3.1:
    print("3.1", separator: "&", terminator: "*")
case 3:
    print("not a interger")
case 3.4:
    print("3.4")
default :
    print("default")
}

//:Switch支持对象吗
//:不支持对象
class Person {
    let name:String
    let age:Int
    init(name:String,age:Int) {
        self.name = name
        self.age = age
    }
}

let switchObj = Person(name: "lion", age: 3)
let switchObjCopy = Person(name: "lion", age: 3)
let switchObj2 = Person(name: "tiger", age: 4)
switch switchObj {
//case switchObj2:
//    print("switch2")
//case switchObjCopy:
//    print("person")
default:
    print("i am an object")
}


//:switch跳转到标签
//var labeledInt = 10
//LabelSwitch:while labeledInt > 4 {
//    
//    switch labeledInt {
//    case 10:
//        labeledInt -= 2
//         print(labeledInt)
//        break
//    case 8:
//        labeledInt -= 2
//        print(labeledInt)
//        continue
//    default:
//     break
//    }
//   
//    
//}


var tuples = ("name",3)
var tuples2:(String,Int) = ("lily",5)

var coordinate = (3,4)



switch coordinate {
    
case (1...3,1...4):
    print("at 1...3,1...4")
case let (x,y) where x > 2 && y > 3:
    print(x,y)
case let (_,y):
    print(y)

}









