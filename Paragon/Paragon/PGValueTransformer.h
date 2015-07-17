//
//  PGValueTransformer.h
//  Paragon
//
//  Created by Richie Davis on 7/16/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, PGTransformResultType) {
  PGTransformResultTypeBOOL,
  PGTransformResultTypeChar,
  PGTransformResultTypeDouble,
  PGTransformResultTypeFloat,
  PGTransformResultTypeInt,
  PGTransformResultTypeNSInteger,
  PGTransformResultTypeNSUInteger,
  PGTransformResultTypeMAX
};

@interface PGValueTransformer : NSObject

+ (id)transformValue:(id)value toClass:(Class)class;
+ (id)transformValue:(id)value withTransform:(PGTransformResultType)transform;

@end
