//
//  PGUtils.m
//  Paragon
//
//  Created by Richie Davis on 7/15/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import "PGUtils.h"
#import <objc/runtime.h>

@implementation PGUtils

+ (Class)classOfPropertyNamed:(NSString *)propertyName class:(Class)class
{
  // Get Class of property to be populated.
  Class propertyClass;
  objc_property_t property = class_getProperty(class, [propertyName UTF8String]);
  NSString *propertyAttributes = [NSString stringWithCString:property_getAttributes(property) encoding:NSUTF8StringEncoding];
  NSArray *splitPropertyAttributes = [propertyAttributes componentsSeparatedByString:@","];
  if (splitPropertyAttributes.count > 0) {
    NSArray *splitEncodeType = [splitPropertyAttributes[0] componentsSeparatedByString:@"\""];
    propertyClass = NSClassFromString(splitEncodeType[1]);
  }
  return propertyClass;
}

@end
