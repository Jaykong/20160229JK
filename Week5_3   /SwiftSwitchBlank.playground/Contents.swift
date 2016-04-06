//: switch能使用条件判断吗
let a = 1
let b = 2
switch a == b {
case true:
    print("true")
case false:
    print("fasle")
}
//:OC的Switch支持条件判断吗？
//:不支持，它只支持整型或者是枚举类型，但是本质还是整型


//:Switch支持String吗
let numberStr = "one"
switch numberStr {
case "one" :
    print("one")
default:
    break
}
//:
//:Switch支持Float吗
let floatNumber = 0.14
switch floatNumber  {
case 0.14 :
    print("0.14")
default:
    break
}
//:Switch支持对象吗
//:不支持对象
class Person {
    var name:String
    var age :Int
    
    init(name:String,age:Int) {
        self.name = name
        self.age = age
    }
}

let person = Person(name: "lily", age: 3)
let person2 = Person(name: "tom", age: 5)
switch person {
//case person2:
//    print("person2")
default:
    break
}


//: Switch：满足多个条件的情况
let naturalNumber = 20
switch naturalNumber {
case 1,2,3,4,5,6,7,8,9,10:
    print("1...10")
    
case 11..<20:
    print("11...20")

default:
    break
}
//:
//:fallthrough,contine,break
let fallNumber = 5
switch fallNumber {
case 5:
    print("5")
    fallthrough
case 4:
    print("fallthrough")
default:
    break
}

for number in 1...10 {
//    switch number {
//    case 1:
//        print("1")
//        
//    default:
//        break
//    }
    
    if number == 9 {
        continue
    }
    print(number)
}

//:switch跳转到标签
//: Switch和Tuples
var labelNum = 3
Label:while labelNum < 5 {
    switch labelNum  {
    case 3:
        labelNum += 1
        break Label
    case 4:
        labelNum += 1
        print("4")
        continue Label
    default:
        break
    }
}

//:元组 tuple
let tuple1:(String,Int,String) = ("lily",5,"female")
tuple1.0
tuple1.1


let point:(Int,Int) = (13,13)
let (x,y) = point
let (xx,yx,zx) = (1,2,3)


switch point {
case (11,11):
    print("11,11")
case (_,12):
    print("y == 12")
case (10,_):
    print("x == 10")
case let (x,y) where x == y :
    print(x,y)
case let(x,y) where x < 11 && y < 13:
    print(x,y)
case let(x,y):
    print(x,y)
default:
    print(point.0,point.1)
}




















