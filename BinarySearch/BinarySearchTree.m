//
//  BinarySearchTree.m
//  BinarySearch
//
//  Created by Shaun Campbell on 2016-09-06.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//

#import "BinarySearchTree.h"

@implementation BinarySearchTree

-(instancetype)initWithNumber:(NSNumber *)number
{
    self = [super init];
    if (self) {
        _root = [[BinaryTreeNode alloc] init];
        _root.number = number;
        
    }
    return self;
}

-(void)insertNumber:(NSObject *)newObject
{
    [self insertNumber:newObject atNode:self.root];
}

-(void) insertNumber:(NSNumber *)newNumber atNode:(BinaryTreeNode *) node
{
    if(node.number == nil)
    {
        node.number = newNumber;
    }
    else if(newNumber > node.number)
    {
        [self insertNumber:newNumber atNode:node.rightChild];
    }
    else if(newNumber < node.number)
    {
        [self insertNumber:newNumber atNode:node.leftChild];
    }
    else if ([newNumber isEqualTo:node.number])
    {
        //what do I do if they are equal
    }
}

-(BinaryTreeNode *)find:(NSObject *)object
{
    return [self find:object atNode:self.root];
}

-(BinaryTreeNode *)find:(NSObject *)object atNode:(BinaryTreeNode *) node
{
    
    
    
}

-(BinaryTreeNode *)deleteObject:(NSObject *)object
{
    BinaryTreeNode *node = [self findObject];
    
    if([node.leftChild isEqual:nil] && [node.rightChild isEqual:nil])
    {
        if(node.isLeftChildOfParent)
        {
            node.parent.leftChild = nil;
        }
        
    }
    
    return [self find:object];
}



@end
