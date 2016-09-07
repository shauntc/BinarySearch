//
//  BinaryTreeNode.m
//  BinarySearch
//
//  Created by Shaun Campbell on 2016-09-06.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//

#import "BinaryTreeNode.h"

@implementation BinaryTreeNode

- (instancetype)initWithParent:(BinaryTreeNode *)parent
{
    self = [super init];
    if (self) {
        _number = nil;
        _leftChild = nil;
        _rightChild = nil;
        _parent = parent;
    }
    return self;
}

-(BOOL)isLeftChildOfParent
{
    return self.parent.number >= self.number;
}


@end
