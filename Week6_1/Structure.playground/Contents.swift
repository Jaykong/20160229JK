
//结构体
struct XYPoint {
    var x: Int
    var y: Int
}
//自动生成一个构造函数
let p1 = XYPoint(x: 3, y: 5)
print(p1)

struct Rectangle {
    var origin:XYPoint //存储属性
    var width:Int
    var height:Int
    var center:XYPoint //计算属性
        {
        get {
         return XYPoint(x: origin.x + width/2, y: origin.y + height/2)
        }
        set(newCenter) {
          origin = XYPoint(x: newCenter.x - width/2, y: newCenter.y - height/2)
        }
    }
}
//结构体是值类型
//参数传递、赋值都是拷贝一个副本再传递、赋值

var r1 = Rectangle(origin: XYPoint(x: 3,y: 5), width: 20, height: 20)
print("old r1:\(r1)")
print("center:\(r1.center)")
var r2 = r1

r1.center = XYPoint(x: 20, y: 20)

print("new r1:\(r1)")

print("r2:\(r2)")











