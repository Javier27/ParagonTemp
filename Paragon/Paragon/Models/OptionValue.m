//
//  OptionValue.m
//  Paragon
//
//  Created by Richie Davis on 7/16/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import "OptionValue.h"
#import "PGObjectMapping.h"
#import "PGRelationshipMapping.h"
#import "Image.h"

@implementation OptionValue

+ (PGObjectMapping *)mapping
{
  PGObjectMapping *mapping = [PGObjectMapping mappingForClass:self];
  [mapping addPropertyMappingsFromArray:@[@"name"]];
  [mapping addPropertyMappingsFromDictionary:@{@"id" : @"identifier",
                                               @"product_id" : @"productID",
                                               @"product_name" : @"productName",
                                               @"is_in_stock" : @"inStock"}];
  [mapping addRelationshipMappingsFromArray:@[
                                              [PGRelationshipMapping relationshipWithProperty:@"image" mapping:[Image mapping]]]];
  return mapping;
}

@end
