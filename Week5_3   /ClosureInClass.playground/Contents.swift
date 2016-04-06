//: ### 定义一个带两个整型参数并返回整型的函数


//: 参数为字符类型，返回字符类型


//: 无参数，无返回类型的


func add (a:Int, b:Int) -> Int {
    return a + b
}
add(1, b: 2)
//:函数类型
let add2:(Int,Int) -> Int = add

add2(1,2)
add(2, b: 3)

//:定义一个(String,String) -> String函数类型
//并且将一个变量strfunc声明为这个函数类型
//直接赋值
//使用strfunc

func addString(a:String, b:String) -> String {
    return a + b
}
//:注意做类型标注和未类型标注的区别
//:作类型标注后可省略每二个参数
//:未作时不可省略
let addString1 = addString
addString1("hello", b: "kitti")

let addString2:(String,String) -> String = addString
addString2("hello","again")

let addString3 = {(a:String,b:String) -> String in
   return a + b
}

addString3("hello", "closure")


//:定义一个字符串数组
let sortArr = ["bob","lily","albert","cidy","wilson"]
sortArr.sort ({ (a:String, b:String) -> Bool in
    return a < b
})
//:知道返回类型，参数类型，都可以省略
sortArr.sort ({ (a, b) in
    return a < b
})
//:单个表达式的话return可以省去
sortArr.sort ({ (a, b) in a < b})

//:使用系统定义的参数$0 $1 $2
sortArr.sort ({$0 < $1})
//:
sortArr.sort(>)



//:定义一个字符串数组
let sortArr2 = ["bob","lily","albert","cidy","wilson"]
sortArr.sort ({ (a:String, b:String) -> Bool in
    return a < b
})

//:如果参数只有一个闭包或多个参数，但闭包在尾部
sortArr.sort () { (a:String, b:String) -> Bool in
    return a < b
}
//:如果只有一个闭包参数圆括号也能省略
sortArr.sort {$0 < $1}

//自定义函数类型作为参数，带多个参数其中有一个参数是函数类型或者说是闭包

func mathOperation(s1:Double,s2:Double,math:(Double,Double) -> Double) -> Double {
  return math(s1, s2)
}

func addDouble(a:Double,b:Double) -> Double {
    return a + b
}
func subtractDouble(a:Double,b:Double) -> Double {
    return a - b
}

mathOperation(5, s2: 2, math: addDouble)
mathOperation(5, s2: 2, math: subtractDouble)

mathOperation(5, s2: 2, math: {(a:Double,b:Double) -> Double in
    return a * b
})












