//
//  NSDictionary+PG.h
//  Paragon
//
//  Created by Richie Davis on 7/25/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (PG)

- (NSDictionary *)mergeWithDictionary:(NSDictionary *)dictionary;
+ (NSDictionary *)dictionaryFromKeyArray:(NSArray *)keyArray finalObject:(id)object;

@end
