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

@property (nonatomic, strong, readonly) NSURL *baseUrl;
@property (nonatomic, strong, readonly) Class errorClass;
@property (nonatomic, readonly) RequestEncodingMIMEType encodingType;
@property (nonatomic, copy, readonly) NSDictionary *requestHeaders;

+ (instancetype)objectManager;
+ (void)storeEndpoints:(NSArray *)endpoints;
+ (PGEndpointRequest *)requestForKey:(id)key;

+ (void)setupWithBaseUrl:(NSURL *)baseUrl
              errorClass:(Class)errorClass
            encodingType:(RequestEncodingMIMEType)encodingType
                 headers:(NSDictionary *)requestHeaders;
+ (void)updateWithHeaders:(NSDictionary *)headers;

@end
