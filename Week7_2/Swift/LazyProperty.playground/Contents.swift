class ImportData {
   
    init() {
        print("initilized")
    }
}

class Image {
    var width:Double
    var height:Double
    init(w:Double,h:Double) {
        self.width = w
        height = h
    }
   lazy var importData:ImportData = ImportData()
}

let image = Image(w: 21, h: 22)

print(image)
image.importData




