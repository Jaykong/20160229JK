func add(a:Int,b:Int) -> Int {
    return a + b
}

let s1 = add(1, b: 2)
print(s1)

func mathFunctionType(a:Int,b:Int,mathOps:(Int,Int) -> Int) -> Int {
    return mathOps(a, b)
}

let s2 = mathFunctionType(3, b: 5, mathOps: add)
print(s2)

let s3 = mathFunctionType(3, b: 5,mathOps: {
    (x:Int,y:Int) -> Int in
return x - y
})

let s4 = mathFunctionType(3, b: 5,mathOps: {
    (x,y)  in
    return x - y
})

let s5 = mathFunctionType(3, b: 5,mathOps: {
    (x,y)  in
    return x - y
})


