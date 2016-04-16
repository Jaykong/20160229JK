//
//  Course.swift
//  2.1
//
//  Created by kongyunpeng on 4/16/16.
//  Copyright © 2016 universal. All rights reserved.
//

import Foundation
class Semestertype {
    
}
class Lecture {
    
}
class Course {
    var name:String
    var semester:Semestertype
    var hours:Float
    init(name:String,semester:Semestertype,hours:Float) {
        self.name = name
        self.semester = semester
        self.hours = hours
    }
    
    func getCredits() -> Int {
       return 0
    }
    
    func getLecture() -> Lecture {
      return Lecture()
    }
    
    func getGPA() -> Float {
      return 0
    }
    
}