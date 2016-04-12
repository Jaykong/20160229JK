 class Vehicle {
    
   var currentSpeed:Int
    init(speed:Int){
        self.currentSpeed = speed
    }
    var description:String {
        return "current speend is \(currentSpeed)"
    }
    func makeNoise() {
        print("")
    }
   
}

let ve1 = Vehicle(speed: 3)
print(ve1.description)
ve1.makeNoise()

class Bicycle: Vehicle {
    var hasBasket:Bool = false
    
}


class Tradem: Bicycle {
    var currentNumberOfPasseger = 2
}

class Train:Bicycle {
    override func makeNoise() {
        print("cha cha cha")
    }
    
    //如果属性可读写的，你覆写的时候不能覆写为只读的
    
  override var currentSpeed: Int {
        get {
           return 100
        }
        set {
            self.currentSpeed = newValue
        }
    }
    
}

let train = Train(speed: 23)
train.description

class TimesTable {
    var multifier = 0
    init(multifier:Int) {
        self.multifier = multifier
    }
    subscript(index:Int) -> Int {
        return multifier * index
    }
}

class MultiTimesTable: TimesTable {
    override subscript(index:Int) -> Int {
        return self.multifier * self.multifier * index
    }
}

let timesTable = TimesTable(multifier: 6)
timesTable[0]
timesTable[1]

let multi = MultiTimesTable(multifier: 7)
multi[1]


class Car: Vehicle {
    var gear = 1
    override var description: String {
        return "\(super.description) the car gear is \(gear)"
    }
}

let car = Car(speed: 30)
car.description
class AutomaticCar:Car {
    override var currentSpeed: Int {
        willSet {
            print(currentSpeed)
        }
        didSet {
            gear = Int(currentSpeed / 10)
        }
    }
}

let aCar = AutomaticCar(speed: 34)
aCar.currentSpeed = 52
aCar.gear












class BMW: Car {
  override  var currentSpeed: Int {
    didSet {
        self.gear = currentSpeed / 10
    }
    }
}











