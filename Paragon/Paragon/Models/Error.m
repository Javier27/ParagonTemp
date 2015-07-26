//
//  Error.m
//  Paragon
//
//  Created by Richie Davis on 7/26/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import "Error.h"
#import "PGObjectMapping.h"

@implementation Error

+ (PGObjectMapping *)mapping
{
  PGObjectMapping *mapping = [PGObjectMapping mappingForClass:self];
  [mapping addPropertyMappingsFromArray:@[@"title",
                                          @"message"]];
  return mapping;
}

@end
