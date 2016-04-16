class PaperInfo {
    static let title:String = ""
    static var paperID:String = ""
    class var formatedTitle :String{
        return "1.\(title)"
    }
}

class UserPaperInfo: PaperInfo {
    
   override class var formatedTitle:String {
        return "2.\(title)"
    }
}