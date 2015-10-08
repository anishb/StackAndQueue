//
//  main.m
//  StackAndQueue
//
//  Created by Anish Basu on 10/8/15.
//  Copyright © 2015 Anish Basu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StackArray.h"
#import "QueueArray.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        StackArray *stack = [StackArray new];
        [stack push:@"One"];
        [stack push:@"Two"];
        [stack push:@"Three"];
        NSLog(@"%@", stack);
        [stack pop];
        NSLog(@"%@", stack);
        
        QueueArray *queue = [QueueArray new];
        [queue enqueue:@"One"];
        [queue enqueue:@"Two"];
        [queue enqueue:@"Three"];
        NSLog(@"%@", queue);
        [queue dequeue];
        NSLog(@"%@", queue);
    }
    return 0;
}
