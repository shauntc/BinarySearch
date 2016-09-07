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
        _root = [[BinaryTreeNode alloc] initWithParent:nil];
        _root.number = number;
        
    }
    return self;
}

-(void)insertNumber:(NSNumber *)newNumber
{
    [self insertNumber:newNumber atNode:self.root];
}

-(void) insertNumber:(NSNumber *)newNumber atNode:(BinaryTreeNode *) node
{
    if(node.number == nil)
    {
        node.number = newNumber;
    }
    else if([newNumber doubleValue] > [node.number doubleValue])
    {
        if(node.rightChild == nil)
        {
            node.rightChild = [[BinaryTreeNode alloc] initWithParent:node];
        }
        [self insertNumber:newNumber atNode:node.rightChild];
    }
    else if([newNumber doubleValue] <= [node.number doubleValue])
    {
        if(node.leftChild == nil)
        {
            node.leftChild = [[BinaryTreeNode alloc] initWithParent:node];
        }
        [self insertNumber:newNumber atNode:node.leftChild];
    }
    
    return;
}

-(BinaryTreeNode *)find:(NSNumber *)number
{
    return [self find:number atNode:self.root];
}

-(BinaryTreeNode *)find:(NSNumber *)number atNode:(BinaryTreeNode *) node
{
    if(node.number == nil)
    {
        NSLog(@"The number %@ does not exist in the binary tree", number);
        return nil;
    }
    else if(number == node.number)
    {
        return node;
    }
    else if(number > node.number)
    {
        return [self find:number atNode:node.rightChild];
    }
    else if(number < node.number)
    {
        return [self find:number atNode:node.leftChild];
    }
    
    NSLog(@"Error: Not sure how the code got here");
    return nil;
    
    
}

-(BinaryTreeNode *)deleteNumber:(NSNumber *)number
{
    BinaryTreeNode *node = [self find:number];
    
    if([node.leftChild isEqual:nil] && [node.rightChild isEqual:nil])
    {
        if(node.isLeftChildOfParent)
        {
            node.parent.leftChild = nil;
        }
        else
        {
            node.parent.rightChild = nil;
        }
        
    }
    else if([node.leftChild isEqual:nil])
    {
        if(node.isLeftChildOfParent)
        {
            node.parent.leftChild = node.leftChild;
            node.leftChild = nil;

        }
        else
        {
            node.parent.rightChild = node.leftChild;
            node.leftChild = nil;

        }
    }
    else if([node.rightChild isEqual:nil])
    {
        if(node.isLeftChildOfParent)
        {
            node.parent.leftChild = node.rightChild;
            node.rightChild = nil;
        }
        else
        {
            node.parent.rightChild = node.rightChild;
            node.rightChild = nil;
        }
    }
    
    return nil;
}



@end
