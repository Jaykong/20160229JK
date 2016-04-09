struct TimesTable {
    let multifier:Int
    
    subscript(index:Int) -> Int {
          return multifier * index
    }
}
let nineTable = TimesTable(multifier: 9)
nineTable[0]
nineTable[1]
nineTable[2]
nineTable[3]
nineTable[4]
nineTable[5]
nineTable[6]
nineTable[7]

class Person {
    var name:String
    var age:Int
    
    init(name:String,age:Int) {
        self.name = name
        self.age = age
    }
    
    subscript(n:String) -> Int {
        get {
            return n.characters.count
        }
        set {
           age = 20
        }
    }
}

let p1 = Person(name: "cat", age: 5)
p1.age
p1["abcdef"]
p1[""] = 133
p1.age


struct Matrix {
    let rows:Int
    let coloums:Int
    var grid:[Int]
    
    init(rows:Int,coloums:Int) {
        self.coloums = coloums
        self.rows = rows
        grid = Array(count: rows * coloums, repeatedValue: 0)
    }
    
    func isValide(row:Int,co:Int) -> Bool {
        return row >= 0 && row < rows && co >= 0 && co < coloums
        
    }
    
    
    subscript(row:Int,coloum:Int) -> Int? {
        get {
            if isValide(row, co: coloum) {
        return grid[row * coloums + coloum]
            } else {
              return nil
            }
        }
        
        set {
            if isValide(row, co: coloum) {
               grid[row * coloums + coloum] = newValue!
            } else {
                print("failed to set value")
            }
           
        }
    }
}
/*
 1  2  3  4
 5  6  8  9
 10 11 12 13

 1  2  3  4 5  6  8  9 10 11 12 13
 */

var matrix = Matrix(rows: 3, coloums: 4)
matrix[0,0]

matrix[0,1] = 13
matrix[0,2] = 9
matrix[3,3]
matrix[3,4] = 12

/*
 
 1  13  9  28
 3  12  11  31
 5  4  10  41
 */















