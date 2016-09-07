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

-(instancetype)initWithNumber:(NSNumber *)number;
-(void)insertNumber:(NSNumber *)newNumber;
-(BinaryTreeNode *)find:(NSNumber *)number;
-(BinaryTreeNode *)deleteNumber:(NSNumber *)number;



@end
