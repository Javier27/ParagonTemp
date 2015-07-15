//
//  PGRelationshipMapping.h
//  Paragon
//
//  Created by Richie Davis on 7/15/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import <Foundation/Foundation.h>
@class PGObjectMapping;

@interface PGRelationshipMapping : NSObject

@property (nonatomic, copy, readonly) NSString *inboundKey;
@property (nonatomic, copy, readonly) NSString *propertyName;
@property (nonatomic, strong, readonly) PGObjectMapping *mapping;

+ (instancetype)relationshipWithKey:(NSString *)inboundKey
                           property:(NSString *)propertyName
                            mapping:(PGObjectMapping *)mapping;

+ (instancetype)relationshipWithProperty:(NSString *)propertyName
                                 mapping:(PGObjectMapping *)mapping;

@end
