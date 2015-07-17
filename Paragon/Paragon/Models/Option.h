//
//  Option.h
//  Paragon
//
//  Created by Richie Davis on 7/15/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PGMappableObject.h"

@interface Option : NSObject <PGMappableObject>

@property (nonatomic, strong) NSNumber *identifier; // integer
@property (nonatomic, copy) NSString   *name;
@property (nonatomic, copy) NSArray *values;        // BBProductOptionValue

@end
