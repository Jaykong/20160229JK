//定义一个带有关联值的枚举类型
enum AnimalType {
    case CatType(String,Int)
    case WildType(String,Bool)
}

//var cattype = AnimalType.CatType("kitty", 3)
//cattype = .WildType("lion", true)
var cattype:AnimalType = .CatType("hello kitty", 5)

switch cattype {
case .CatType(let name,let age):
    print(name,age)
case .WildType(let name,let eatingMeat):
    print(name,eatingMeat)
}


