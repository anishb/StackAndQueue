//
//  QueueArray.h
//  StackAndQueue
//
//  Created by Anish Basu on 10/8/15.
//  Copyright © 2015 Anish Basu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QueueArray : NSObject

- (void)enqueue:(id)obj;
- (id)dequeue;
- (id)peek;
- (NSUInteger)count;

@end
