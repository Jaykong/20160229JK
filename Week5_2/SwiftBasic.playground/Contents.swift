//: ##### 常量和变量
//: * 常量
let aConstInt = 10
//: * 变量
var aChangableValue = 12
aChangableValue = 13
//: ##### 基本的数据类型
//: * String Character
let aStr = "this is string"
var anotherStry : String = "another string"
//: OC:NSString *anotherStry = @"another string"
let singleChar = "a"
//: * 声明为String类型
var anotherSingChar:Character = "b"
//: * 这样声明为Character类型

//: * Float Int Double
let f1 = 10
let f2:Float = 12

let d1 = 12
let d2:Double = 14

let int1 = 11
let int2:Int = 12

//: 类型标注
let typeAnotation:String = "the string"
//: 类型推断
let notDeclaredType = 12 //
/*:
> 推断为整型
*/
let notDeclearedStr = "not declared str" //String
let notDeclaredDecimal = 12.34 //Double

//: 字符串连接
let hello = "hello"
let name = "swift"
//: * 插值法 \()
let helloWho = "\(hello) \(name)"
//: * + 号法
let helloWho2 = hello + name
let helloWho3 = "hello" + "swift"
let helloWho4 = hello + " " + name
let helloWho5 = hello + "\(name)"

//: 字面量 literal 
let leteralInt = 3 // 3 is literal
let literalFlot = 3.5 // 3.5 is 
let literalString = "literal" // 

//: 条件判断 if  Switch

let nagtive = -1
if nagtive > 0 {
    print("+")
} else if nagtive == 0{
    print("0")
} else {
    print("-")
}



switch nagtive {
case -1:
    print("-1")
    print("contine")
case 0:
    print("0")
case 1:
    print("1")
default:
    break
}

//: 三目运算符
let resut = 2 < 1 ? 1 : 2

//: 循环 loop

//: * while
//: * do while

//: for
for _  in 1...10 {
    print("excute me")
}

for var index in 1..<10 {
    index = index + 1
    print(index)
}

let arr:[Int] = [1,2,4,5,6] //[Int]
for element in arr {
    print(element)
}

let strArr:[String] = ["a1","a2","a3","a4"]

for ele in strArr {
    print(ele)
}

for i in 0  ..< 3 {
    
}

var x:Int = 0
x += 10
x = x + 10

//: 函数

//:外部调用参数名即形参externalCall1
//:函数内部使用参数名parameter1

func funcName(externalCall1 parameter1:Int,externalCall2 parameter2:Int) -> Int {
  let result = parameter1 * parameter2
  return result
}
//let reuslt = funcName(10, parameter2: 12)
funcName(externalCall1: 10, externalCall2: 12)

func funcName2(parameter1:Int, parameter2:Int) -> Int {
    let result = parameter1 * parameter2
    return result
}




























