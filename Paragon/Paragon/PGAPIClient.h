//
//  PGAPIClient.h
//  Paragon
//
//  Created by Richie Davis on 7/20/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFHTTPRequestOperation.h"

typedef void (^PGCompletion)(id response, id error);
typedef void (^PGCompletionWithCode)(NSInteger statusCode, id response, id error);
typedef void (^AFSuccess)(AFHTTPRequestOperation *operation, id responseObject);
typedef void (^AFFailure)(AFHTTPRequestOperation *operation, NSError *error);

@interface PGAPIClient : NSObject

// request methods with status code

- (void)performRequestWithEndpoint:(id)key
                completionWithCode:(PGCompletionWithCode)completion;

- (void)performRequestWithEndpoint:(id)key
                        pathSuffix:(NSString *)suffix
                completionWithCode:(PGCompletionWithCode)completion;

- (void)performRequestWithEndpoint:(id)key
                            params:(NSDictionary *)params
                completionWithCode:(PGCompletionWithCode)completion;

- (void)performRequestWithEndpoint:(id)key
                            object:(id)object
                completionWithCode:(PGCompletionWithCode)completion;

- (void)performRequestWithEndpoint:(id)key
                        pathSuffix:(NSString *)suffix
                            object:(id)object
                completionWithCode:(PGCompletionWithCode)completion;

- (void)performRequestWithEndpoint:(id)key
                            params:(NSDictionary *)params
                            object:(id)object
                completionWithCode:(PGCompletionWithCode)completion;

- (void)performRequestWithEndpoint:(id)key
                        pathSuffix:(NSString *)suffix
                            params:(NSDictionary *)params
                completionWithCode:(PGCompletionWithCode)completion;

- (void)performRequestWithEndpoint:(id)key
                        pathSuffix:(NSString *)suffix
                            params:(NSDictionary *)params
                            object:(id)object
                completionWithCode:(PGCompletionWithCode)completion;

- (void)performRequestWithEndpoint:(id)key
                        pathSuffix:(NSString *)suffix
                            params:(NSDictionary *)params
                            object:(id)object
                           headers:(NSDictionary *)headers
                completionWithCode:(PGCompletionWithCode)completion;

// request methods without status code

- (void)performRequestWithEndpoint:(id)key
                        completion:(PGCompletion)completion;

- (void)performRequestWithEndpoint:(id)key
                        pathSuffix:(NSString *)suffix
                        completion:(PGCompletion)completion;

- (void)performRequestWithEndpoint:(id)key
                            params:(NSDictionary *)params
                        completion:(PGCompletion)completion;

- (void)performRequestWithEndpoint:(id)key
                            object:(id)object
                        completion:(PGCompletion)completion;

- (void)performRequestWithEndpoint:(id)key
                        pathSuffix:(NSString *)suffix
                            object:(id)object
                        completion:(PGCompletion)completion;

- (void)performRequestWithEndpoint:(id)key
                            params:(NSDictionary *)params
                            object:(id)object
                        completion:(PGCompletion)completion;

- (void)performRequestWithEndpoint:(id)key
                        pathSuffix:(NSString *)suffix
                            params:(NSDictionary *)params
                        completion:(PGCompletion)completion;

- (void)performRequestWithEndpoint:(id)key
                        pathSuffix:(NSString *)suffix
                            params:(NSDictionary *)params
                            object:(id)object
                        completion:(PGCompletion)completion;

- (void)performRequestWithEndpoint:(id)key
                        pathSuffix:(NSString *)suffix
                            params:(NSDictionary *)params
                            object:(id)object
                           headers:(NSDictionary *)headers
                        completion:(PGCompletion)completion;

@end
