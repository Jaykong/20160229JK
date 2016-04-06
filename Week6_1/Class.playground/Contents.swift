//类的定义
class XYPoint {
    var x : Int
    var y : Int
    init(x:Int,y:Int) {
        self.x = x
        self.y = y
    } //构造方法，本质要保证所有的属性被赋值
}

var p1 = XYPoint(x: 12, y: 13)
print(p1.x,p1.y)

class Rectangle {
    var origin:XYPoint
    var width:Int
    var height:Int
    var center:XYPoint {
        get {
            return XYPoint(x: origin.x + width/2, y: origin.y + height/2)
        }
        set {
            origin = XYPoint(x: newValue.x - width/2, y: newValue.y - height/2)
        }
        
    }
    
    init(x:Int,y:Int,w:Int,h:Int) {
        self.origin = XYPoint(x: x, y: y)
        self.width = w
        height = h
    }//构造方法保证只是存储属性被赋值，不需要考虑计算属性，比如这里的center计算属性
    func description() {
        print("(\(origin.x),\(origin.y),\(self.width),\(self.height),\(self.center.x),\(self.center.y))")
    }
}

var r1 = Rectangle(x: 1, y: 2, w: 20, h: 20)
r1.description()

var r2 = r1

r1.center = XYPoint(x: 40, y: 40)
r1.description()

r2.description()

//所有类都是引用类型
//对象的赋值、传参是指针的引用，也就是指向同一内存，那么任何指针改变这个内存都会影响其它指针




