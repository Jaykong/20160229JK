


struct XYPoint {
    var x:Int
    var y:Int
}

struct Rectangle {
    var origin : XYPoint
    var width:Int
    var height:Int
    var center: XYPoint {
        get {
          return  XYPoint(x: origin.x + width/2, y: origin.y + height/2)
            
        }
        set {
            self.origin = XYPoint(x: newValue.x - width/2, y: newValue.y - height/2)
        }
    }
}


var rect = Rectangle(origin: XYPoint(x: 3,y: 5), width: 15, height: 15)
rect.center = XYPoint(x:15,y: 15)
print(rect.origin)


