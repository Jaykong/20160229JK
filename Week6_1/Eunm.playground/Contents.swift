//Eunm 枚举
enum Direction {
    case South
    case North
    case West
    case East
    
    func description() {
        print("direction")
    }
}

var d1 = Direction.South
var d2: Direction = .West

enum NaturalNumber:Int {//rawValue
    case one = 1
    case two
    case three
}

var n1 = NaturalNumber.one
print(n1.rawValue)
var n2 : NaturalNumber = .two
print(n2.rawValue)

enum Season:String { //如果你没有定义raw value，它的值就是case的String值
    case Spring
    case Summer
    case Auturm
    case Winter
}

let s1 = Season.Spring
print(s1.rawValue)

enum Error {
    case Http(Int,String)
    case Socket(Int,Int,String)
}

var e1 : Error = .Http(202, "not find the page")
e1 = .Socket(13, 404, "virus")
var e2 : Error = .Socket(1, 303, "not found")
//使用switch提取枚举时面的关联值
switch e1 {
case .Http(var x, let y):
    x = 303
    print("\(x),\(y)")
case let .Socket(x,y,z):
    print("\(x),\(y),\(y)")
}


switch e2 {
case let .Socket(x,y,z) :
    print("\(x),\(y),\(z)")
case .Http(var x, let y):
    x = 303
    print("\(x),\(y)")
}













