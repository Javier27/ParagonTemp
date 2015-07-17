//
//  Image.m
//  Paragon
//
//  Created by Richie Davis on 7/15/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import "Image.h"
#import "PGObjectMapping.h"

@implementation Image

+ (PGObjectMapping *)mapping
{
  PGObjectMapping *mapping = [PGObjectMapping mappingForClass:self];
  [mapping addPropertyMappingsFromArray:@[@"url",
                                          @"height",
                                          @"width"]];
  return mapping;
}

@end
