//
//  OptionValue.h
//  Paragon
//
//  Created by Richie Davis on 7/16/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PGMappableObject.h"
@class Image;

@interface OptionValue : NSObject <PGMappableObject>

@property (nonatomic, strong) NSNumber *identifier; // integer
@property (nonatomic, copy) NSString   *name;
@property (nonatomic, strong) NSNumber *productID;  // integer
@property (nonatomic, copy) NSString   *productName;
@property (nonatomic, strong) Image *image;
@property (nonatomic, strong) NSNumber *inStock;    // bool

@end
