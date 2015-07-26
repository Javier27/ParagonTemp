//
//  PGEndpointRequest.h
//  Paragon
//
//  Created by Richie Davis on 7/21/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM (NSInteger, RequestEncodingMIMEType) {
  RequestEncodingMIMETypeJSON,
  RequestEncodingMIMETypeForm
};

typedef NS_ENUM (NSInteger, RequestAcceptEncodingMIMEType) {
  RequestAcceptEncodingMIMETypeJSON,
  RequestAcceptEncodingMIMETypeForm
};

typedef NS_ENUM (NSInteger, RequestType) {
  RequestTypeGET,
  RequestTypePOST,
  RequestTypePUT,
  RequestTypeDELETE
};

@interface PGEndpointRequest : NSObject

@property (nonatomic, strong, readonly) id key;
@property (nonatomic, strong, readonly) Class bodyClass;
@property (nonatomic, strong, readonly) Class responseClass;
@property (nonatomic, strong, readonly) Class errorClass;
@property (nonatomic, copy, readonly) NSString *rootBodyKey;
@property (nonatomic, copy, readonly) NSString *rootResponseKey;
@property (nonatomic, copy, readonly) NSString *rootErrorKey;
@property (nonatomic, copy, readonly) NSURL *url;
@property (nonatomic, readonly) RequestEncodingMIMEType encodingType;
@property (nonatomic, readonly) RequestType requestType;

// Initializer Methods

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

- (instancetype)initWithKey:(id)key
                        url:(NSURL *)url
                  bodyClass:(Class)bodyClass
              responseClass:(Class)responseClass
                 errorClass:(Class)errorClass
               encodingType:(RequestEncodingMIMEType)encodingType
               decodingType:(RequestAcceptEncodingMIMEType)decodingType
                requestType:(RequestType)requestType;

// Integer Initializers

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

- (instancetype)initWithEndpoint:(int)endpoint
                             url:(NSURL *)url
                       bodyClass:(Class)bodyClass
                   responseClass:(Class)responseClass
                      errorClass:(Class)errorClass
                    encodingType:(RequestEncodingMIMEType)encodingType
                    decodingType:(RequestAcceptEncodingMIMEType)decodingType
                     requestType:(RequestType)requestType;

// C++ convenience Methods

PGEndpointRequest* GET(id key, Class responseClass, NSString *path);
PGEndpointRequest* POST(id key, Class bodyClass, Class responseClass, NSString *path);
PGEndpointRequest* PUT(id key, Class bodyClass, Class responseClass, NSString *path);
PGEndpointRequest* DELETE(id key, Class responseClass, NSString *path);

@end
