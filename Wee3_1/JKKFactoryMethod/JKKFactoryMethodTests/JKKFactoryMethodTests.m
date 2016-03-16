//
//  JKKFactoryMethodTests.m
//  JKKFactoryMethodTests
//
//  Created by trainer on 3/14/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Adult.h"
#import "Person.h"
#import "PersonSelector.h"
@interface JKKFactoryMethodTests : XCTestCase

@end

@implementation JKKFactoryMethodTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}
-(void)testSelector {
    int height = [PersonSelector selectHeight:10];
    XCTAssertEqual(height, 100,@"passed");
}
- (void)testExample {
    Adult *adult = [[Adult alloc] init];
    XCTAssertEqual(adult.age, 20, @"passed");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
