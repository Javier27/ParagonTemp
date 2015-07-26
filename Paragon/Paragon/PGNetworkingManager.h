//
//  PGNetworkingManager.h
//  Paragon
//
//  Created by Richie Davis on 7/20/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PGEndpointRequest.h"

@interface PGNetworkingManager : NSObject

@property (nonatomic, strong) NSURL *baseUrl;
@property (nonatomic, strong) Class errorClass;
@property (nonatomic) RequestEncodingMIMEType encodingType;
@property (nonatomic) RequestAcceptEncodingMIMEType decodingType;
@property (nonatomic, copy) NSDictionary *requestHeaders;

+ (instancetype)objectManager;
+ (void)storeEndpoints:(NSArray *)endpoints;
+ (PGEndpointRequest *)requestForKey:(id)key;

@end
