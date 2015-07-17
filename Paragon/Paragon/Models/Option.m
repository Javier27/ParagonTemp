//
//  Option.m
//  Paragon
//
//  Created by Richie Davis on 7/15/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import "Option.h"
#import "PGObjectMapping.h"
#import "PGRelationshipMapping.h"
#import "OptionValue.h"

@implementation Option

+ (PGObjectMapping *)mapping
{
  PGObjectMapping *mapping = [PGObjectMapping mappingForClass:self];
  [mapping addPropertyMappingsFromArray:@[@"name"]];
  [mapping addPropertyMappingsFromDictionary:@{@"id" : @"identifier"}];
  [mapping addRelationshipMappingsFromArray:@[
           [PGRelationshipMapping relationshipWithProperty:@"values" mapping:[OptionValue mapping]]]];
  
  return mapping;
}

@end
