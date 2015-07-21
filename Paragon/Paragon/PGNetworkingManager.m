//
//  PGNetworkingManager.m
//  Paragon
//
//  Created by Richie Davis on 7/20/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import "PGNetworkingManager.h"

@interface PGNetworkingManager ()

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

@end
