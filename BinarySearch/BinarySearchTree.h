//
//  BinarySearchTree.h
//  BinarySearch
//
//  Created by Shaun Campbell on 2016-09-06.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BinaryTreeNode.h"

@interface BinarySearchTree : NSObject

@property (nonatomic, strong) BinaryTreeNode *root;

-(instancetype)initWithObject:(NSObject *)object;
-(void)insertObject:(NSObject *)newObject;
-(BinaryTreeNode *)find:(NSObject *)object;
-(BinaryTreeNode *)deleteObject:(NSObject *)object;



@end
