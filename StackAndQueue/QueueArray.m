//
//  QueueArray.m
//  StackAndQueue
//
//  Created by Anish Basu on 10/8/15.
//  Copyright © 2015 Anish Basu. All rights reserved.
//

#import "QueueArray.h"

@interface QueueArray()
@property (nonatomic, strong) NSMutableArray *items;
@end

@implementation QueueArray

- (instancetype)init
{
    self = [super init];
    if (self) {
        _items = [NSMutableArray new];
    }
    return self;
}

- (void)enqueue:(id)obj
{
    [self.items addObject:obj];
}

- (id)dequeue
{
    if ([self.items count] == 0) {
        return nil;
    }
    id firstObject = self.items[0];
    [self.items removeObjectAtIndex:0];
    
    return firstObject;
}

- (id)peek
{
    return [self.items firstObject];
}

- (NSUInteger)count
{
    return [self.items count];
}

- (NSString *)description
{
    NSMutableString *description = [NSMutableString new];
    [self.items enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (idx == 0) {
            [description appendFormat:@"%@", obj];
        } else {
            [description appendFormat:@"-> %@", obj];
        }
    }];
    
    return description;
}

@end
