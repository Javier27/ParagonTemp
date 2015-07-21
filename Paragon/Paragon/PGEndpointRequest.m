//
//  PGEndpointRequest.m
//  Paragon
//
//  Created by Richie Davis on 7/21/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import "PGEndpointRequest.h"
#import "PGNetworkingManager.h"
#import "PGObjectMapping.h"
#import "PGMappableObject.h"

@interface PGEndpointRequest ()

@property (nonatomic, strong, readwrite) id key;
@property (nonatomic, strong, readwrite) Class bodyClass;
@property (nonatomic, strong, readwrite) Class responseClass;
@property (nonatomic, strong, readwrite) Class errorClass;
@property (nonatomic, copy, readwrite) NSString *rootKey;
@property (nonatomic, copy, readwrite) NSURL *url;
@property (nonatomic, readwrite) RequestEncodingMIMEType encodingType;
@property (nonatomic, readwrite) RequestAcceptEncodingMIMEType decodingType;
@property (nonatomic, readwrite) RequestType requestType;

@property (nonatomic, weak) PGNetworkingManager *manager;

@end

@implementation PGEndpointRequest

#pragma mark Initializers

- (instancetype)initWithKey:(id)key requestType:(RequestType)type bodyClass:(Class)class path:(NSString *)path
{
  return [self initWithKey:key
                       url:[NSURL URLWithString:path relativeToURL:self.manager.baseUrl]
                 bodyClass:class
             responseClass:nil
                errorClass:self.manager.errorClass
              encodingType:self.manager.encodingType
              decodingType:self.manager.decodingType
               requestType:type];
}

- (instancetype)initWithKey:(id)key requestType:(RequestType)type responseClass:(Class)class path:(NSString *)path
{
  return [self initWithKey:key
                       url:[NSURL URLWithString:path relativeToURL:self.manager.baseUrl]
                 bodyClass:class
             responseClass:class
                errorClass:self.manager.errorClass
              encodingType:self.manager.encodingType
              decodingType:self.manager.decodingType
               requestType:type];
}

- (instancetype)initWithKey:(id)key requestType:(RequestType)type bodyClass:(Class)class url:(NSString *)url
{
  return [self initWithKey:key
                       url:[NSURL URLWithString:url]
                 bodyClass:class
             responseClass:nil
                errorClass:self.manager.errorClass
              encodingType:self.manager.encodingType
              decodingType:self.manager.decodingType
               requestType:type];
}

- (instancetype)initWithKey:(id)key requestType:(RequestType)type responseClass:(Class)class url:(NSString *)url
{
  return [self initWithKey:key
                       url:[NSURL URLWithString:url]
                 bodyClass:class
             responseClass:class
                errorClass:self.manager.errorClass
              encodingType:self.manager.encodingType
              decodingType:self.manager.decodingType
               requestType:type];
}

- (instancetype)initWithKey:(id)key
                requestType:(RequestType)type
                  bodyClass:(Class)bodyClass
              responseClass:(Class)responseClass
                       path:(NSString *)path
{
  return [self initWithKey:key
                       url:[NSURL URLWithString:path relativeToURL:self.manager.baseUrl]
                 bodyClass:bodyClass
             responseClass:responseClass
                errorClass:self.manager.errorClass
              encodingType:self.manager.encodingType
              decodingType:self.manager.decodingType
               requestType:type];
}

- (instancetype)initWithKey:(id)key
                requestType:(RequestType)type
                  bodyClass:(Class)bodyClass
              responseClass:(Class)responseClass
                 errorClass:(Class)errorClass
                       path:(NSString *)path
{
  return [self initWithKey:key
                       url:[NSURL URLWithString:path relativeToURL:self.manager.baseUrl]
                 bodyClass:bodyClass
             responseClass:responseClass
                errorClass:errorClass
              encodingType:self.manager.encodingType
              decodingType:self.manager.decodingType
               requestType:type];
}

- (instancetype)initWithKey:(id)key
                requestType:(RequestType)type
                  bodyClass:(Class)bodyClass
              responseClass:(Class)responseClass
                        url:(NSString *)url
{
  return [self initWithKey:key
                       url:[NSURL URLWithString:url]
                 bodyClass:bodyClass
             responseClass:responseClass
                errorClass:self.manager.errorClass
              encodingType:self.manager.encodingType
              decodingType:self.manager.decodingType
               requestType:type];
}

- (instancetype)initWithKey:(id)key
                requestType:(RequestType)type
                  bodyClass:(Class)bodyClass
              responseClass:(Class)responseClass
                 errorClass:(Class)errorClass
                        url:(NSString *)url
{
  return [self initWithKey:key
                       url:[NSURL URLWithString:url]
                 bodyClass:bodyClass
             responseClass:responseClass
                errorClass:errorClass
              encodingType:self.manager.encodingType
              decodingType:self.manager.decodingType
               requestType:type];
}

- (instancetype)initWithKey:(id)key
                        url:(NSURL *)url
                  bodyClass:(Class)bodyClass
              responseClass:(Class)responseClass
                 errorClass:(Class)errorClass
               encodingType:(RequestEncodingMIMEType)encodingType
               decodingType:(RequestAcceptEncodingMIMEType)decodingType
                requestType:(RequestType)requestType
{
  self = [super init];
  if (self) {
    self.key = key;
    self.url = url;
    self.bodyClass = bodyClass;
    self.responseClass = responseClass;
    self.errorClass = errorClass;
    self.encodingType = encodingType;
    self.decodingType = decodingType;
    self.requestType = requestType;
    
    if (bodyClass) {
      NSString *error = [NSString stringWithFormat:@"%@ request to %@ does not have a valid obbject mapping for class %@",
                         [self stringFromEnum:self.requestType],
                         url.absoluteString,
                         NSStringFromClass(bodyClass)];
      NSAssert([bodyClass conformsToProtocol:@protocol(PGMappableObject)], error);
    }
    if (responseClass) {
      NSString *error = [NSString stringWithFormat:@"%@ request to %@ does not have a valid obbject mapping for class %@",
                         [self stringFromEnum:self.requestType],
                         url.absoluteString,
                         NSStringFromClass(responseClass)];
      NSAssert([responseClass conformsToProtocol:@protocol(PGMappableObject)], error);
    }
    if (errorClass) {
      NSString *error = [NSString stringWithFormat:@"%@ request to %@ does not have a valid obbject mapping for class %@",
                         [self stringFromEnum:self.requestType],
                         url.absoluteString,
                         NSStringFromClass(errorClass)];
      NSAssert([errorClass conformsToProtocol:@protocol(PGMappableObject)], error);
    }
  }
  
  return self;
}

#pragma mark Initializers - Integers

- (instancetype)initWithEndpoint:(int)endpoint requestType:(RequestType)type bodyClass:(Class)class path:(NSString *)path
{
  return [self initWithEndpoint:endpoint
                            url:[NSURL URLWithString:path relativeToURL:self.manager.baseUrl]
                      bodyClass:class
                  responseClass:nil
                     errorClass:self.manager.errorClass
                   encodingType:self.manager.encodingType
                   decodingType:self.manager.decodingType
                    requestType:type];
}

- (instancetype)initWithEndpoint:(int)endpoint requestType:(RequestType)type responseClass:(Class)class path:(NSString *)path
{
  return [self initWithEndpoint:endpoint
                            url:[NSURL URLWithString:path relativeToURL:self.manager.baseUrl]
                      bodyClass:class
                  responseClass:class
                     errorClass:self.manager.errorClass
                   encodingType:self.manager.encodingType
                   decodingType:self.manager.decodingType
                    requestType:type];
}

- (instancetype)initWithEndpoint:(int)endpoint requestType:(RequestType)type bodyClass:(Class)class url:(NSString *)url
{
  return [self initWithEndpoint:endpoint
                            url:[NSURL URLWithString:url]
                      bodyClass:class
                  responseClass:nil
                     errorClass:self.manager.errorClass
                   encodingType:self.manager.encodingType
                   decodingType:self.manager.decodingType
                    requestType:type];
}

- (instancetype)initWithEndpoint:(int)endpoint requestType:(RequestType)type responseClass:(Class)class url:(NSString *)url
{
  return [self initWithEndpoint:endpoint
                            url:[NSURL URLWithString:url]
                      bodyClass:class
                  responseClass:class
                     errorClass:self.manager.errorClass
                   encodingType:self.manager.encodingType
                   decodingType:self.manager.decodingType
                    requestType:type];
}

- (instancetype)initWithEndpoint:(int)endpoint
                     requestType:(RequestType)type
                       bodyClass:(Class)bodyClass
                   responseClass:(Class)responseClass
                            path:(NSString *)path
{
  return [self initWithEndpoint:endpoint
                            url:[NSURL URLWithString:path relativeToURL:self.manager.baseUrl]
                      bodyClass:bodyClass
                  responseClass:responseClass
                     errorClass:self.manager.errorClass
                   encodingType:self.manager.encodingType
                   decodingType:self.manager.decodingType
                    requestType:type];
}

- (instancetype)initWithEndpoint:(int)endpoint
                     requestType:(RequestType)type
                       bodyClass:(Class)bodyClass
                   responseClass:(Class)responseClass
                      errorClass:(Class)errorClass
                            path:(NSString *)path
{
  return [self initWithEndpoint:endpoint
                            url:[NSURL URLWithString:path relativeToURL:self.manager.baseUrl]
                      bodyClass:bodyClass
                  responseClass:responseClass
                     errorClass:errorClass
                   encodingType:self.manager.encodingType
                   decodingType:self.manager.decodingType
                    requestType:type];
}

- (instancetype)initWithEndpoint:(int)endpoint
                     requestType:(RequestType)type
                       bodyClass:(Class)bodyClass
                   responseClass:(Class)responseClass
                             url:(NSString *)url
{
  return [self initWithEndpoint:endpoint
                            url:[NSURL URLWithString:url]
                      bodyClass:bodyClass
                  responseClass:responseClass
                     errorClass:self.manager.errorClass
                   encodingType:self.manager.encodingType
                   decodingType:self.manager.decodingType
                    requestType:type];
}

- (instancetype)initWithEndpoint:(int)endpoint
                     requestType:(RequestType)type
                       bodyClass:(Class)bodyClass
                   responseClass:(Class)responseClass
                      errorClass:(Class)errorClass
                             url:(NSString *)url
{
  return [self initWithEndpoint:endpoint
                            url:[NSURL URLWithString:url]
                      bodyClass:bodyClass
                  responseClass:responseClass
                     errorClass:errorClass
                   encodingType:self.manager.encodingType
                   decodingType:self.manager.decodingType
                    requestType:type];
}

- (instancetype)initWithEndpoint:(int)endpoint
                             url:(NSURL *)url
                       bodyClass:(Class)bodyClass
                   responseClass:(Class)responseClass
                      errorClass:(Class)errorClass
                    encodingType:(RequestEncodingMIMEType)encodingType
                    decodingType:(RequestAcceptEncodingMIMEType)decodingType
                     requestType:(RequestType)requestType
{
  return [self initWithKey:@(endpoint)
                       url:url
                 bodyClass:bodyClass
             responseClass:responseClass
                errorClass:errorClass
              encodingType:self.manager.encodingType
              decodingType:self.manager.decodingType
               requestType:requestType];
}

#pragma mark C++ Convenience

PGEndpointRequest* GET(id key, Class responseClass, NSString *path)
{
  return [[PGEndpointRequest alloc] initWithKey:key requestType:RequestTypeGET responseClass:responseClass path:path];
}

PGEndpointRequest* POST(id key, Class bodyClass, Class responseClass, NSString *path)
{
  return [[PGEndpointRequest alloc] initWithKey:key requestType:RequestTypePOST bodyClass:bodyClass responseClass:responseClass path:path];
}

PGEndpointRequest* PUT(id key, Class bodyClass, Class responseClass, NSString *path)
{
  return [[PGEndpointRequest alloc] initWithKey:key requestType:RequestTypePUT bodyClass:bodyClass responseClass:responseClass path:path];
}

PGEndpointRequest* DELETE(id key, Class responseClass, NSString *path)
{
  return [[PGEndpointRequest alloc] initWithKey:key requestType:RequestTypeDELETE responseClass:responseClass path:path];
}

#pragma mark Networking Manager

- (PGNetworkingManager *)networkManager
{
  return [PGNetworkingManager objectManager];
}

#pragma mark String helpers

- (NSString *)stringFromEnum:(RequestType)type
{
  switch (type) {
    case RequestTypeDELETE:
      return @"DELETE";
      break;
    case RequestTypePOST:
      return @"POST";
      break;
    case RequestTypeGET:
      return @"GET";
      break;
    case RequestTypePUT:
      return @"PUT";
      break;
  }
}

@end
