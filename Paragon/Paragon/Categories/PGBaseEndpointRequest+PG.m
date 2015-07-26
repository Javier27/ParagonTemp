//
//  PGBaseEndpointRequest+PG.m
//  Paragon
//
//  Created by Richie Davis on 7/26/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import "PGBaseEndpointRequest+PG.h"
#import "PGNetworkingManager.h"

@implementation PGBaseEndpointRequest (PG)

#pragma mark Initializers - Keys

- (instancetype)initWithKey:(id)key requestType:(RequestType)type bodyClass:(Class)class path:(NSString *)path
{
  return [self initWithKey:key
                       url:[NSURL URLWithString:path relativeToURL:self.manager.baseUrl]
                 bodyClass:class
             responseClass:nil
                errorClass:self.manager.errorClass
              encodingType:self.manager.encodingType
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
               requestType:type];
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
                    requestType:type];
}

#pragma mark Convenience

PGBaseEndpointRequest* GET(id key, Class responseClass, NSString *path)
{
  return [[PGBaseEndpointRequest alloc] initWithKey:key
                                        requestType:RequestTypeGET
                                      responseClass:responseClass
                                               path:path];
}

PGBaseEndpointRequest* POST(id key, Class bodyClass, Class responseClass, NSString *path)
{
  return [[PGBaseEndpointRequest alloc] initWithKey:key
                                        requestType:RequestTypePOST
                                          bodyClass:bodyClass
                                      responseClass:responseClass
                                               path:path];
}

PGBaseEndpointRequest* PUT(id key, Class bodyClass, Class responseClass, NSString *path)
{
  return [[PGBaseEndpointRequest alloc] initWithKey:key
                                        requestType:RequestTypePUT
                                          bodyClass:bodyClass
                                      responseClass:responseClass
                                               path:path];
}

PGBaseEndpointRequest* DELETE(id key, Class responseClass, NSString *path)
{
  return [[PGBaseEndpointRequest alloc] initWithKey:key
                                        requestType:RequestTypeDELETE
                                      responseClass:responseClass
                                               path:path];
}

@end
