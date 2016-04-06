//:化简Closure
let arr = ["lily","jim","bob","canddy","elle"]
arr.sort({(s1:String,s2:String) -> Bool in
    return s1 > s2
    }
)

arr.sort(){(s1:String,s2:String) -> Bool in
    return s1 > s2
}

arr.sort{(s1:String,s2:String) -> Bool in
    return s1 > s2
}




//: * 省略参数类型

arr.sort({(s1,s2) in
    return s1 > s2
    }
)

//: * 单表达式省去return
arr.sort({(s1,s2) in
     s1 > s2
    }
)

//:

arr.sort({ $0 > $1})
//:

arr.sort(>)


   
    



