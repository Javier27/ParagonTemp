//
//  ExampleRequestManager.h
//  Paragon
//
//  Created by Richie Davis on 7/26/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSInteger {
  ExampleEndpointGetProduct
} ExampleEndpoint;

@interface ExampleRequestManager : NSObject

+ (void)assignManagerFields;
+ (void)setupEndpointRequests;

@end
