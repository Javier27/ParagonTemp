//
//  ExampleRequestManager.m
//  Paragon
//
//  Created by Richie Davis on 7/26/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import "ExampleRequestManager.h"
#import "PGNetworkingManager.h"
#import "Error.h"
#import "Product.h"

@implementation ExampleRequestManager

+ (void)assignManagerFields
{
  [PGNetworkingManager setupWithBaseUrl:[NSURL URLWithString:@"https://api.birchbox.com"]
                             errorClass:[Error class]
                           encodingType:RequestEncodingMIMETypeForm
                                headers:@{}];
}

+ (void)setupEndpointRequests
{
  [PGNetworkingManager storeEndpoints:@[GET(@(ExampleEndpointGetProduct), [Product class], @"/products/")]];
}

@end
