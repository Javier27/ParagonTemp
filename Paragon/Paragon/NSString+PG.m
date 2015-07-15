//
//  NSString+PG.m
//  Paragon
//
//  Created by Richie Davis on 7/15/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import "NSString+PG.h"

@implementation NSString (PG)

- (BOOL)hasSubstring:(NSString *)substring
{
  return [self rangeOfString:substring].location == NSNotFound;
}

@end
