class Vehicle {
   private var currentSpeed:Int
    init(speed:Int){
        self.currentSpeed = speed
    }
   private var description:String {
        return "current speend is \(currentSpeed)"
    }
   private func makeNoise() {
        print("")
    }
    
}

let ve1 = Vehicle(speed: 3)
print(ve1.description)
ve1.makeNoise()

class Bicycle: Vehicle {
    var hasBasket:Bool  {
        self.currentSpeed = 44
        return true
    }
    
    var test = 1
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
        willSet {
         self.test = 3
        }
        
        didSet {
          // self.test = 5
        }
      
    }
    
}

let train = Train(speed: 23)
train.description
train.test

train.currentSpeed = 11
train.test


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













