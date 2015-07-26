//
//  PGBaseAPIClient+PG.h
//  Paragon
//
//  Created by Richie Davis on 7/26/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import "PGBaseAPIClient.h"

@interface PGBaseAPIClient (PG)

// requests with status code

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

// requests without status code

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

// convenience methods

void PGRequestWithCodes(PGBaseAPIClient *client,
                        id requestKey,
                        NSString *pathSuffix,
                        NSDictionary *params,
                        id bodyObject,
                        NSDictionary *headers,
                        PGCompletionWithCode completion);

void PGRequest(PGBaseAPIClient *client,
               id requestKey,
               NSString *pathSuffix,
               NSDictionary *params,
               id bodyObject,
               NSDictionary *headers,
               PGCompletion completion);

@end
