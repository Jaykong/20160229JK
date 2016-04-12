
//
//  AlphaAbstractStrategy.swift
//  StrategyReview
//
//  Created by trainer on 4/11/16.
//  Copyright © 2016 trainer. All rights reserved.
//

import UIKit

class AlphaAbstractStrategy: AbstractStrategy {
    
  override  func validate(textField:UITextField) -> Bool {
    print("alpha")
        return false
        
    }
}
