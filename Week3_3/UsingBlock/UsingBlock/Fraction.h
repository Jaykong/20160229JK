
//
//  Fraction.h
//  UsingBlock
//
//  Created by trainer on 3/18/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 Different Ways to decare block
 */
typedef void (^BlockType)();
@interface Fraction : NSObject
{
    void (^block1)();
}
-(void)usingBlock:(void (^)())blockName;

@end
