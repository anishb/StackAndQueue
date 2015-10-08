//
//  StackAndQueueTests.m
//  StackAndQueueTests
//
//  Created by Anish Basu on 10/8/15.
//  Copyright © 2015 Anish Basu. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "StackArray.h"

@interface StackAndQueueTests : XCTestCase
@property (nonatomic, strong) StackArray *stack;
@end

@implementation StackAndQueueTests

- (void)setUp
{
    [super setUp];
    self.stack = [StackArray new];
}

- (void)tearDown
{
    [super tearDown];
    self.stack = nil;
}

- (void)testPush
{
    [self.stack push:@1];
    [self.stack push:@2];
    XCTAssertEqual(2, [self.stack count]);
}

- (void)testPop
{
    [self.stack push:@1];
    [self.stack push:@2];
    NSNumber *popped = [self.stack pop];
    XCTAssertEqual(1, [self.stack count]);
    XCTAssertEqualObjects(@2, popped);
    
    popped = [self.stack pop];
    popped = [self.stack pop];
    XCTAssertEqual(0, [self.stack count]);
    XCTAssertNil(popped);
}

- (void)testPeek
{
    [self.stack push:@1];
    NSNumber *top = [self.stack peek];
    XCTAssertEqual(1, [self.stack count]);
    XCTAssertEqualObjects(@1, top);
    
    [self.stack pop];
    XCTAssertNil([self.stack peek]);
}


@end
