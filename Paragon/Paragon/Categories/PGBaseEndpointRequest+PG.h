//
//  PGBaseEndpointRequest+PG.h
//  Paragon
//
//  Created by Richie Davis on 7/26/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import "PGBaseEndpointRequest.h"

@interface PGBaseEndpointRequest (PG)

// initializers with key

- (instancetype)initWithKey:(id)key requestType:(RequestType)type bodyClass:(Class)class path:(NSString *)path;
- (instancetype)initWithKey:(id)key requestType:(RequestType)type responseClass:(Class)class path:(NSString *)path;
- (instancetype)initWithKey:(id)key requestType:(RequestType)type bodyClass:(Class)class url:(NSString *)url;
- (instancetype)initWithKey:(id)key requestType:(RequestType)type responseClass:(Class)class url:(NSString *)url;

- (instancetype)initWithKey:(id)key
                requestType:(RequestType)type
                  bodyClass:(Class)bodyClass
              responseClass:(Class)responseClass
                       path:(NSString *)path;

- (instancetype)initWithKey:(id)key
                requestType:(RequestType)type
                  bodyClass:(Class)bodyClass
              responseClass:(Class)responseClass
                 errorClass:(Class)errorClass
                       path:(NSString *)path;

- (instancetype)initWithKey:(id)key
                requestType:(RequestType)type
                  bodyClass:(Class)bodyClass
              responseClass:(Class)responseClass
                        url:(NSString *)url;

- (instancetype)initWithKey:(id)key
                requestType:(RequestType)type
                  bodyClass:(Class)bodyClass
              responseClass:(Class)responseClass
                 errorClass:(Class)errorClass
                        url:(NSString *)url;

// initializers with enum

- (instancetype)initWithEndpoint:(int)endpoint requestType:(RequestType)type bodyClass:(Class)class path:(NSString *)path;
- (instancetype)initWithEndpoint:(int)endpoint requestType:(RequestType)type responseClass:(Class)class path:(NSString *)path;
- (instancetype)initWithEndpoint:(int)endpoint requestType:(RequestType)type bodyClass:(Class)class url:(NSString *)url;
- (instancetype)initWithEndpoint:(int)endpoint requestType:(RequestType)type responseClass:(Class)class url:(NSString *)url;

- (instancetype)initWithEndpoint:(int)endpoint
                     requestType:(RequestType)type
                       bodyClass:(Class)bodyClass
                   responseClass:(Class)responseClass
                            path:(NSString *)path;

- (instancetype)initWithEndpoint:(int)endpoint
                     requestType:(RequestType)type
                       bodyClass:(Class)bodyClass
                   responseClass:(Class)responseClass
                      errorClass:(Class)errorClass
                            path:(NSString *)path;

- (instancetype)initWithEndpoint:(int)endpoint
                     requestType:(RequestType)type
                       bodyClass:(Class)bodyClass
                   responseClass:(Class)responseClass
                             url:(NSString *)url;

- (instancetype)initWithEndpoint:(int)endpoint
                     requestType:(RequestType)type
                       bodyClass:(Class)bodyClass
                   responseClass:(Class)responseClass
                      errorClass:(Class)errorClass
                             url:(NSString *)url;

// pure convenience methods

PGBaseEndpointRequest* GET(id key, Class responseClass, NSString *path);
PGBaseEndpointRequest* POST(id key, Class bodyClass, Class responseClass, NSString *path);
PGBaseEndpointRequest* PUT(id key, Class bodyClass, Class responseClass, NSString *path);
PGBaseEndpointRequest* DELETE(id key, Class responseClass, NSString *path);

@end
