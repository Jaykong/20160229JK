
//
//  Square.swift
//  1.2
//
//  Created by kongyunpeng on 4/16/16.
//  Copyright © 2016 universal. All rights reserved.
//

import Foundation
class Square {
    var side:Double
    init(side:Double) {
        self.side = side
    }
    
    func perimeter() -> Double{
        return 4 * self.side
    }
    
    func area() -> Double {
        return side * side
    }
}