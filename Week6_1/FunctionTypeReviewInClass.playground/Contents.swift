func add(a:Int,b:Int) -> Int {
    return a + b
}

let s1 = add(1, b: 2)
print(s1)

func mathFuncType(a:Int,b:Int,mathOps:(Int,Int) -> Int) -> Int {
   
    return mathOps(a, b)
}

let s2 = mathFuncType(1, b: 3, mathOps: add)
print(s2)

let s3 = mathFuncType(8, b: 5, mathOps: {(x:Int,y:Int) -> Int in
    return x * y
})
print(s3)

let s4 = mathFuncType(8, b: 5, mathOps: {(x,y) in
    return x - y
})

let s5 = mathFuncType(8, b: 5, mathOps: {(x,y) in
     x - y
})

let s6 = mathFuncType(8, b: 5, mathOps: {
    $0 - $1
})

let s7 = mathFuncType(8, b: 5, mathOps: - )


let s8 = mathFuncType(8, b: 5, mathOps: {(x,y) in
    return x - y
    }
)



