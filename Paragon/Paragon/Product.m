//
//  Product.m
//  Paragon
//
//  Created by Richie Davis on 7/15/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import "Product.h"
#import "PGObjectMapping.h"
#import "PGRelationshipMapping.h"

#import "Image.h"
#import "Option.h"
#import "Price.h"

@implementation Product

+ (PGObjectMapping *)mapping
{
  PGObjectMapping *mapping = [PGObjectMapping mappingForClass:self];
  [mapping addPropertyMappingsFromArray:@[@"name",
                                          @"rating",
                                          @"ingredients",
                                          @"brand"]];
  [mapping addPropertyMappingsFromDictionary:@{@"id" : @"identifier",
                                               @"review_count" : @"reviewCount",
                                               @"is_free_shipping" : @"freeShipping",
                                               @"is_in_stock" : @"inStock",
                                               @"is_gift_with_purchase" : @"giftWithPurchase",
                                               @"is_sample_with_purchase" : @"sampleWithPurchase",
                                               @"is_reviewable" : @"isReviewable",
                                               @"max_sale_quantity" : @"maxQuantity",
                                               @"description" : @"fullDescription",
                                               @"short_description" : @"shortDescription",
                                               @"expert_take" : @"expertTake",
                                               @"magazine_content" : @"magazineContent",
                                               @"how_it_works" : @"howItWorks",
                                               @"how_to_use" : @"howToUse",
                                               @"details_html" : @"detailsHTML",
                                               @"brand_id" : @"brandID",
                                               @"url_key" : @"urlKey",
                                               @"page_button_type" : @"pageButtonType"}];
  [mapping addRelationshipMappingsFromArray:@[
          [PGRelationshipMapping relationshipWithProperty:@"price" mapping:[Price mapping]]
  ]];

  return mapping;
}

@end
