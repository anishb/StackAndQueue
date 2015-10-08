//
//  StackArray.m
//  StackAndQueue
//
//  Created by Anish Basu on 10/8/15.
//  Copyright © 2015 Anish Basu. All rights reserved.
//

#import "StackArray.h"

@interface StackArray()
@property (nonatomic, strong) NSMutableArray *items;
@end

@implementation StackArray

- (instancetype)init
{
    self = [super init];
    if (self) {
        _items = [NSMutableArray new];
    }
    return self;
}

- (void)push:(id)obj
{
    [self.items addObject:obj];
}

- (id)pop
{
    id lastItem = [self.items lastObject];
    [self.items removeLastObject];
    
    return lastItem;
}

- (id)peek
{
    return [self.items lastObject];
}

- (NSUInteger)count
{
    return [self.items count];
}

- (NSString *)description
{
    NSMutableString *description = [[NSMutableString alloc] initWithCapacity:[self.items count]];
    int numItems = (int)[self.items count];
    for (int i = numItems - 1; i >= 0; i--) {
        [description appendFormat:@"\n%@", self.items[i]];
    }
    
    return description;
}

@end
