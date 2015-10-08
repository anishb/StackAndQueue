//
//  StackArray.h
//  StackAndQueue
//
//  Created by Anish Basu on 10/8/15.
//  Copyright © 2015 Anish Basu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StackArray : NSObject

- (void)push:(id)obj;
- (id)pop;
- (id)peek;
- (NSUInteger)count;

@end
