struct TimesTable {
    let multifier:Int
    subscript(index:Int) -> Int {
        return index * multifier
    }
}

let fiveTimesTable = TimesTable(multifier: 5)
let firstEle = fiveTimesTable[1]
let secondEle = fiveTimesTable[2]
//can we set a setter for timesTable

struct TimesTable2 {
    var multifier:Int
    subscript(index:Int) -> Int {
        get {
            return index * multifier
        }
        set {
            multifier = newValue / index
        }
    }
}

var eightTimesTable = TimesTable2(multifier: 8)
eightTimesTable[0]
 eightTimesTable[5] = 18
eightTimesTable.multifier

var numberOflegs = ["dog":4,"frog":4,"chicken":2,"duck":2]
let dogleg = numberOflegs["dog"]
print(dogleg)
numberOflegs["pig"] = 4
numberOflegs["duck"] = nil


struct Matrix {
    let rows :Int
    let colums:Int
    var grid:[Double]
    
    init(rows:Int,colums:Int) {
        self.rows = rows
        self.colums = colums
       grid = Array(count: rows * colums, repeatedValue: 0)
    }
    
    func isValidRowAndColum(row:Int,column:Int) -> Bool {
       return row >= 0 && row < rows && column < colums && column >= 0
    }
    subscript(row:Int,column:Int) -> Double? {
        get {
            if isValidRowAndColum(row, column: column) {
           return grid[row * colums + column]
            } else {
                return nil
            }
        }
        set {
            assert(isValidRowAndColum(row, column: column), "index out of range")
            grid[row * colums + column] = newValue!
        }
    }
}

var matrix = Matrix(rows: 3, colums: 4)
matrix[0,1] = 5
matrix.grid[1]
//matrix[5,5] = 10


struct Space {
    var numbers = [Int]()
    
    
    subscript(index:Int...) -> Int {
        get {
            var sum = 0
            for ele in index {
                sum += ele
            }
            return numbers[sum]
        }
        
        set {
            var sum = 0
            for ele in index {
                sum += ele
            }
            numbers[sum] = newValue
        }
    }
    
    subscript(str:String...) -> String {
        var newStr = ""
        for astr in str {
          newStr += astr
        }
        
        return newStr
    }
}

var space = Space(numbers: [10,15])
space[0,1]
space[0,1] = 35

space["i","love","swift"]

extension String {
    subscript(strArr:String...) -> String {
        var newStr = ""
        for str in strArr {
           newStr += str
        }
        return newStr
    }
}
let test = "i"
""["this","is","fun"]




















