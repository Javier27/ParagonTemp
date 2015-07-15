//
//  Price.m
//  Paragon
//
//  Created by Richie Davis on 7/15/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import "Price.h"
#import "PGObjectMapping.h"

@implementation Price

+ (PGObjectMapping *)mapping
{
  PGObjectMapping *mapping = [PGObjectMapping mappingForClass:self];
  [mapping addPropertyMappingsFromArray:@[@"currency",
                                          @"amount"]];
  
  return mapping;
}

@end
