//
//  main.m
//  BinarySearch
//
//  Created by Shaun Campbell on 2016-09-06.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BinarySearchTree.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BinarySearchTree *newTree = [[BinarySearchTree alloc] initWithNumber:[NSNumber numberWithInt:5]];
        
        [newTree insertNumber: [NSNumber numberWithInt:6]];
        [newTree insertNumber: [NSNumber numberWithInt:8]];
        [newTree insertNumber: [NSNumber numberWithInt:3]];
        [newTree insertNumber: [NSNumber numberWithInt:7]];
        [newTree insertNumber: [NSNumber numberWithInt:23]];
        
        [newTree insertNumber:[NSNumber numberWithInt:15]];
        

        
        
        
    }
    return 0;
}
