//
//  BinarySearchTree.m
//  BinarySearch
//
//  Created by Shaun Campbell on 2016-09-06.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//

#import "BinarySearchTree.h"

@implementation BinarySearchTree

-(instancetype)initWithObject:(NSObject *)object
{
    self = [super init];
    if (self) {
        _root = [[BinaryTreeNode alloc] init];
        _root.object = object;
        
    }
    return self;
}

-(void)insertObject:(NSObject *)newObject
{
    [self insertObject:newObject atNode:self.root];
}

-(void) insertObject:(NSObject *)newObject atNode:(BinaryTreeNode *) node
{
    if(node.object == nil)
    {
        node.object = newObject;
    }
    else if(newObject > node.object)
    {
        [self insertObject:newObject atNode:node.rightChild];
    }
    else if(newObject < node.object)
    {
        [self insertObject:newObject atNode:node.leftChild];
    }
    else if ([newObject isEqualTo:node.object])
    {
        //what do I do if they are equal
    }
}

-(BinaryTreeNode *)find:(NSObject *)object
{
    
}

-(BinaryTreeNode *)deleteObject:(NSObject *)object
{
    
}



@end
