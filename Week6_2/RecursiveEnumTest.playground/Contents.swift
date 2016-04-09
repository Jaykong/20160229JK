enum ArigrithmExpression {
    case Number(Int)
    indirect case Add(ArigrithmExpression,ArigrithmExpression)
    indirect case multi(ArigrithmExpression,ArigrithmExpression)
}

let ex1 = ArigrithmExpression.Number(3)
let ex2 = ArigrithmExpression.Number(5)

let add1 = ArigrithmExpression.Add(ex1, ex2)
let mult1 = ArigrithmExpression.multi(add1, ex2)

var result = 0
switch mult1 {
case .Number(let x):
    result = x
case .Add(let x1,let y1) :
    switch x1 : {
        case .Number(let x):
        res
    }
}










