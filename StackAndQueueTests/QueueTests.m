//
//  QueueTests.m
//  StackAndQueue
//
//  Created by Anish Basu on 10/8/15.
//  Copyright © 2015 Anish Basu. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "QueueArray.h"

@interface QueueTests : XCTestCase
@property (nonatomic, strong) QueueArray *queue;
@end

@implementation QueueTests

- (void)setUp {
    [super setUp];
    self.queue = [QueueArray new];
}

- (void)tearDown {
    self.queue = nil;
    [super tearDown];
}

- (void)testEnqueue
{
    [self.queue enqueue:@1];
    [self.queue enqueue:@2];
    XCTAssertEqual(2, [self.queue count]);
}

- (void)testDequeue
{
    [self.queue enqueue:@1];
    [self.queue enqueue:@2];
    NSNumber *dequeued = [self.queue dequeue];
    XCTAssertEqual(@1, dequeued);
    dequeued = [self.queue dequeue];
    XCTAssertEqual(@2, dequeued);
    dequeued = [self.queue dequeue];
    XCTAssertNil(dequeued);
}

- (void)testPeek
{
    [self.queue enqueue:@1];
    [self.queue enqueue:@2];
    XCTAssertEqual(@1, [self.queue peek]);
    
    [self.queue dequeue];
    [self.queue dequeue];
    XCTAssertNil([self.queue peek]);
}



@end
