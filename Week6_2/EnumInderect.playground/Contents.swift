//enum枚举
//indirect keyword use

enum AlgorithmExpression {
         case Number(Int)
indirect case Add(AlgorithmExpression,AlgorithmExpression)
indirect case multiply(AlgorithmExpression,AlgorithmExpression)
}

func evaluate(expression:AlgorithmExpression) -> Int {
    switch expression {
    case .Number(let value):
        return value;
    case .Add(let a1, let a2):
       return evaluate(a1) + evaluate(a2)
    case .multiply(let a1, let a2):
        return evaluate(a1) * evaluate(a2)
    
}
}
//( 3 + 5 ) * 5
let a1:AlgorithmExpression = .Number(3)
let a2:AlgorithmExpression = .Number(5)
let a3:AlgorithmExpression = .Add(a1, a2)
let a4:AlgorithmExpression = .multiply(a3, a2)
let result = evaluate(a4)
print(result)



