//
//  Image.h
//  Paragon
//
//  Created by Richie Davis on 7/15/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PGMappableObject.h"

@interface Image : NSObject <PGMappableObject>

@property (nonatomic, copy) NSString *url;
@property (nonatomic, strong) NSNumber *width;  // integer, pixels
@property (nonatomic, strong) NSNumber *height; // integer, pixels

@end
