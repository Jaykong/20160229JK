class Food {
    var name:String
    init(name:String) {
        self.name = name
    }
    convenience init() {
        self.init(name:"unkonwn")
    }
    
    var description:String {
        return "the food name is \(self.name)"
    }
}
//if a designated initializer does not delegate up to a superclass initializer,the superclass will override the new value



class Recipe:Food {
    var quantity : Int
  override var description: String {
      return "\(super.description) and the quality is \(self.quantity)"
    }
   override init(name: String) {
    self.quantity = 0
    super.init(name: name)
    }
  
    convenience init() {
    self.init(name:"unkonw")
    }
    
    
    init(name: String,quantity:Int) {
        self.quantity = quantity
       super.init(name: name)
        
    }
    
}