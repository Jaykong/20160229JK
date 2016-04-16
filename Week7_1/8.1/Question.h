//
//  Question.h
//  8.1
//
//  Created by kongyunpeng on 4/16/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject<NSCoding>
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *answer;
@property(nonatomic,copy)NSString *parse;
@property(nonatomic,copy)NSString *qid;
@property(nonatomic,strong)NSDate *addTime;
@property(nonatomic,assign)NSInteger sort;
@end

