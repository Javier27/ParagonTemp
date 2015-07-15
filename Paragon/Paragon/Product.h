//
//  Product.h
//  Paragon
//
//  Created by Richie Davis on 7/15/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PGMappableObject.h"
@class Price;

@interface Product : NSObject <PGMappableObject>

@property (nonatomic, strong) NSNumber *identifier; // integer
@property (nonatomic, copy) NSString   *name;
@property (nonatomic, copy) NSString   *brand;
@property (nonatomic, strong) NSNumber *brandID;
@property (nonatomic, strong) NSNumber *rating;             // float
@property (nonatomic, strong) NSNumber *reviewCount;        // integer
@property (nonatomic, strong) Price *price;
@property (nonatomic, strong) NSNumber *freeShipping;       // bool
@property (nonatomic, strong) NSNumber *isReviewable;       // bool
@property (nonatomic, strong) NSNumber *inStock;            // bool
@property (nonatomic, strong) NSNumber *sampleWithPurchase; // bool
@property (nonatomic, strong) NSNumber *giftWithPurchase;   // bool
@property (nonatomic, strong) NSNumber *maxQuantity;        // integer
@property (nonatomic, copy) NSString   *fullDescription;
@property (nonatomic, copy) NSString   *shortDescription;
@property (nonatomic, copy) NSString   *expertTake;
@property (nonatomic, copy) NSString   *magazineContent;
@property (nonatomic, copy) NSString   *howItWorks;
@property (nonatomic, copy) NSString   *howToUse;
@property (nonatomic, copy) NSString   *ingredients;
@property (nonatomic, copy) NSString   *detailsHTML;
@property (nonatomic, copy) NSArray    *images;  // BBXImage
@property (nonatomic, copy) NSArray    *options; // BBXProductOptions
@property (nonatomic, copy) NSString   *urlKey;
@property (nonatomic, copy) NSString   *pageButtonType;

@end
