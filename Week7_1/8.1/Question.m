


//
//  Question.m
//  8.1
//
//  Created by kongyunpeng on 4/16/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "Question.h"
#define QuestionTitle @"QuestionTitle"
#define QuestionAddTime @"QuestionAddTime"
#define QuestionSort @"QuestionSort"
/*
 
 @property(nonatomic,copy)NSString *title;
 @property(nonatomic,copy)NSString *answer;
 @property(nonatomic,copy)NSString *parse;
 @property(nonatomic,copy)NSString *qid;
 @property(nonatomic,strong)NSDate *addTime;
 @property(nonatomic,assign)NSInteger sort;
 */
@implementation Question

-(instancetype)initWithCoder:(NSCoder *)aDecoder {
   self.title =  [aDecoder decodeObjectForKey:QuestionTitle];
    self.addTime = [aDecoder decodeObjectForKey:QuestionAddTime];
    self.sort = [aDecoder decodeIntegerForKey:QuestionSort];
    
    return  self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder {
    
    [aCoder encodeObject:self.title forKey:QuestionTitle];
    [aCoder encodeInteger:self.sort forKey:QuestionSort];
    [aCoder encodeObject:self.addTime forKey:QuestionAddTime];
    
}
@end
