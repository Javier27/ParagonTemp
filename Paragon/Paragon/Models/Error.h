//
//  Error.h
//  Paragon
//
//  Created by Richie Davis on 7/26/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PGMappableObject.h"

@interface Error : NSObject <PGMappableObject>

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *message;

@end
