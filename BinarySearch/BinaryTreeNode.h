//
//  BinaryTreeNode.h
//  BinarySearch
//
//  Created by Shaun Campbell on 2016-09-06.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinaryTreeNode : NSObject

@property (nonatomic, strong) NSObject *object;
@property (nonatomic, strong) BinaryTreeNode *leftChild;
@property (nonatomic, strong) BinaryTreeNode *rightChild;
@property (nonatomic, strong) BinaryTreeNode *parent;

-(BOOL)isLeftChildOfParent;

@end
