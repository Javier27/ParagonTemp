//
//  PGObjectMapping.h
//  Paragon
//
//  Created by Richie Davis on 7/15/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PGObjectMapping : NSObject

@property (nonatomic, weak, readonly) Class mappingClass;

+ (instancetype)mappingForClass:(Class)modelClass;
- (void)addPropertyMappingsFromArray:(NSArray *)propertyMappings;
- (void)addPropertyMappingsFromDictionary:(NSDictionary *)propertyMappings;
- (void)addRelationshipMappingsFromArray:(NSArray *)relationshipMappings;
- (id)objectFromDictionary:(NSDictionary *)dictionary;

@end
