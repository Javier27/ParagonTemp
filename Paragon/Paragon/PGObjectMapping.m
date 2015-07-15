//
//  PGObjectMapping.m
//  Paragon
//
//  Created by Richie Davis on 7/15/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import "PGObjectMapping.h"
#import "PGRelationshipMapping.h"
#import "PGUtils.h"
#import "NSString+PG.h"

@interface PGObjectMapping ()

@property (nonatomic, copy) NSDictionary *baseMappings;
@property (nonatomic, copy) NSArray *relationshipMappings;
@property (nonatomic, weak, readwrite) Class mappingClass;

@end

@implementation PGObjectMapping

+ (instancetype)mappingForClass:(Class)modelClass
{
  PGObjectMapping *mapping = [[PGObjectMapping alloc] init];
  mapping.mappingClass = modelClass;
  return mapping;
}

- (void)addPropertyMappingsFromArray:(NSArray *)propertyMappings
{
  [self addPropertyMappingsFromDictionary:[[NSDictionary alloc] initWithObjects:propertyMappings
                                                                        forKeys:propertyMappings]];
}

- (void)addPropertyMappingsFromDictionary:(NSDictionary *)propertyMappings
{
  NSMutableDictionary *newMappings = [[NSMutableDictionary alloc] init];
  NSString *error = [NSString stringWithFormat:@"Your property mappings must be strings, this is violated for class %@", self.mappingClass];
  for (id key in propertyMappings) {
    id val = propertyMappings[key];
    NSAssert([key isKindOfClass:[NSString class]], error);
    NSAssert([val isKindOfClass:[NSString class]], error);
    newMappings[key] = val;
  }

  [newMappings addEntriesFromDictionary:self.baseMappings];
  self.baseMappings = [newMappings copy];
}

- (void)addRelationshipMappingsFromArray:(NSArray *)relationshipMappings
{
  NSString *error = [NSString stringWithFormat:@"Your relationship mappings must be PGRelationshipMapping objects, this is violated for class %@", self.mappingClass];
  for (id mapping in relationshipMappings) {
    NSAssert([mapping isKindOfClass:[PGRelationshipMapping class]], error);
  }
  self.relationshipMappings = [relationshipMappings arrayByAddingObjectsFromArray:self.relationshipMappings];
}

- (id)objectFromDictionary:(NSDictionary *)dictionary
{
  if (!dictionary) return nil;

  id result = [[self.mappingClass alloc] init];

  // start with base mapping
  for (NSString *key in self.baseMappings) {
    NSArray *splitKey = [key componentsSeparatedByString:@"."];
    id propertyObject;
    if (splitKey.count > 1 && dictionary[splitKey[0]]) {
      int idx = 1;
      propertyObject = splitKey[0];
      while (propertyObject && idx < splitKey.count) {
        if ([propertyObject isKindOfClass:[NSDictionary class]] || idx == splitKey.count - 1) {
          propertyObject = [(NSDictionary *)propertyObject objectForKey:splitKey[idx]];
        } else {
          // we bail, if not the last idx, we require another dictionary in this case and it was not present
          propertyObject = nil;
        }
        idx++;
      }
    } else {
      propertyObject = dictionary[splitKey[0]];
    }

//    Class propertyClass = [PGUtils classOfPropertyNamed:self.baseMappings[key] class:self.mappingClass];
//    BOOL classMatch = propertyClass == [propertyObject class];
//    BOOL objectHasClass = [(id)result respondsToSelector:NSSelectorFromString(self.baseMappings[key])];
//    if (classMatch && objectHasClass) [(id)result setProperty:propertyObject forKey:self.baseMappings[key]];
    [result setValue:propertyObject forKey:self.baseMappings[key]];
  }

  // now handle the relationship mapping
  for (PGRelationshipMapping *mapping in self.relationshipMappings) {
    NSArray *splitKey = [mapping.inboundKey componentsSeparatedByString:@"."];
    id propertyObject;
    if (splitKey.count > 1 && dictionary[splitKey[0]]) {
      int idx = 1;
      propertyObject = splitKey[0];
      while (propertyObject && idx < splitKey.count) {
        if ([propertyObject isKindOfClass:[NSDictionary class]]) {
          propertyObject = [(NSDictionary *)propertyObject objectForKey:splitKey[idx]];
        } else {
          // we bail, for relationship mappings we require a dictionary
          propertyObject = nil;
        }
        idx++;
      }
    } else {
      propertyObject = dictionary[splitKey[0]];
    }

    propertyObject = [mapping.mapping objectFromDictionary:propertyObject];
//    Class propertyClass = [PGUtils classOfPropertyNamed:mapping.propertyName class:self.mappingClass];
//    BOOL classMatch = propertyClass == [propertyObject class];
//    BOOL objectHasClass = [(id)result respondsToSelector:NSSelectorFromString(mapping.propertyName)];
//    if (classMatch && objectHasClass) [(id)result setProperty:propertyObject forKey:mapping.propertyName];
    [result setValue:propertyObject forKey:mapping.propertyName];
  }

  return result;
}

@end
