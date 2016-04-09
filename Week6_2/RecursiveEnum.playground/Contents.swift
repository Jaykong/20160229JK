enum ArigrithmExpression {
         case Number(Int)
indirect case Add(ArigrithmExpression,ArigrithmExpression)
indirect case multi(ArigrithmExpression,ArigrithmExpression)
}

let ex1 = ArigrithmExpression.Number(3)
let ex2 = ArigrithmExpression.Number(5)

let add1 = ArigrithmExpression.Add(ex1, ex2)
let mult1 = ArigrithmExpression.multi(add1, ex2)

func evaluate(expre:ArigrithmExpression) -> Int {
    switch expre {
    case .Number(let x):
        return x
    case let .Add(expre1, expre2):
        
     return evaluate(expre1) + evaluate(expre2)
    case let .multi(expre1, expre2):
        return evaluate(expre1) * evaluate(expre2)
    }
}
//(3 + 5) * 5
let reslut = evaluate(mult1)
print(reslut)

// ( 10 + 12 ) * 15








