//
//  PGNetworkingManager.m
//  Paragon
//
//  Created by Richie Davis on 7/20/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import "PGNetworkingManager.h"
#import "PGEndpointRequest.h"

@interface PGNetworkingManager ()

@property (nonatomic, copy) NSDictionary *endpoints;

@end

@implementation PGNetworkingManager

+ (instancetype)objectManager;
{
  static PGNetworkingManager *instance;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[PGNetworkingManager alloc] init];
  });
  return instance;
}

+ (void)storeEndpoints:(NSArray *)endpoints
{
  NSMutableDictionary *newEndpoints = [[NSMutableDictionary alloc] init];
  for (PGEndpointRequest *endpoint in endpoints) {
    NSAssert([endpoint isKindOfClass:[PGEndpointRequest class]],
             @"One of the objects being stored in the networking manager is not an endpoint request, all objects must be endpoint requests.");
    newEndpoints[endpoint.key] = endpoint;
  }
  
  [newEndpoints addEntriesFromDictionary:[PGNetworkingManager objectManager].endpoints];
  [PGNetworkingManager objectManager].endpoints = newEndpoints;
}

@end
