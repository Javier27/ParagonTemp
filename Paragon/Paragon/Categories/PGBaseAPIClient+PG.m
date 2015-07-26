//
//  PGBaseAPIClient+PG.m
//  Paragon
//
//  Created by Richie Davis on 7/26/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import "PGBaseAPIClient+PG.h"

@implementation PGBaseAPIClient (PG)

#pragma mark Convenience Perform Request Methods Completion

- (void)performRequestWithEndpoint:(id)key
                        completion:(PGCompletion)completion
{
  [self performRequestWithEndpoint:key pathSuffix:nil params:nil object:nil completion:completion];
}

- (void)performRequestWithEndpoint:(id)key
                        pathSuffix:(NSString *)suffix
                        completion:(PGCompletion)completion
{
  [self performRequestWithEndpoint:key pathSuffix:suffix params:nil object:nil completion:completion];
}

- (void)performRequestWithEndpoint:(id)key
                            params:(NSDictionary *)params
                        completion:(PGCompletion)completion
{
  [self performRequestWithEndpoint:key pathSuffix:nil params:params object:nil completion:completion];
}

- (void)performRequestWithEndpoint:(id)key
                            object:(id)object
                        completion:(PGCompletion)completion
{
  [self performRequestWithEndpoint:key pathSuffix:nil params:nil object:object headers:nil completion:completion];
}

- (void)performRequestWithEndpoint:(id)key
                        pathSuffix:(NSString *)suffix
                            object:(id)object
                        completion:(PGCompletion)completion
{
  [self performRequestWithEndpoint:key pathSuffix:suffix params:nil object:object headers:nil completion:completion];
}

- (void)performRequestWithEndpoint:(id)key
                            params:(NSDictionary *)params
                            object:(id)object
                        completion:(PGCompletion)completion
{
  [self performRequestWithEndpoint:key pathSuffix:nil params:params object:object headers:nil completion:completion];
}

- (void)performRequestWithEndpoint:(id)key
                        pathSuffix:(NSString *)suffix
                            params:(NSDictionary *)params
                        completion:(PGCompletion)completion
{
  [self performRequestWithEndpoint:key pathSuffix:suffix params:params object:nil completion:completion];
}

- (void)performRequestWithEndpoint:(id)key
                        pathSuffix:(NSString *)suffix
                            params:(NSDictionary *)params
                            object:(id)object
                        completion:(PGCompletion)completion
{
  [self performRequestWithEndpoint:key pathSuffix:suffix params:params object:object headers:nil completion:completion];
}

#pragma mark Convenience Perform Request Methods CompletionWithCode

- (void)performRequestWithEndpoint:(id)key
                completionWithCode:(PGCompletionWithCode)completion
{
  [self performRequestWithEndpoint:key pathSuffix:nil params:nil object:nil completionWithCode:completion];
}

- (void)performRequestWithEndpoint:(id)key
                        pathSuffix:(NSString *)suffix
                completionWithCode:(PGCompletionWithCode)completion
{
  [self performRequestWithEndpoint:key pathSuffix:suffix params:nil object:nil completionWithCode:completion];
}

- (void)performRequestWithEndpoint:(id)key
                            params:(NSDictionary *)params
                completionWithCode:(PGCompletionWithCode)completion
{
  [self performRequestWithEndpoint:key pathSuffix:nil params:params object:nil completionWithCode:completion];
}

- (void)performRequestWithEndpoint:(id)key
                            object:(id)object
                completionWithCode:(PGCompletionWithCode)completion
{
  [self performRequestWithEndpoint:key pathSuffix:nil params:nil object:object headers:nil completionWithCode:completion];
}

- (void)performRequestWithEndpoint:(id)key
                        pathSuffix:(NSString *)suffix
                            object:(id)object
                completionWithCode:(PGCompletionWithCode)completion
{
  [self performRequestWithEndpoint:key pathSuffix:suffix params:nil object:object headers:nil completionWithCode:completion];
}

- (void)performRequestWithEndpoint:(id)key
                            params:(NSDictionary *)params
                            object:(id)object
                completionWithCode:(PGCompletionWithCode)completion
{
  [self performRequestWithEndpoint:key pathSuffix:nil params:params object:object headers:nil completionWithCode:completion];
}

- (void)performRequestWithEndpoint:(id)key
                        pathSuffix:(NSString *)suffix
                            params:(NSDictionary *)params
                completionWithCode:(PGCompletionWithCode)completion
{
  [self performRequestWithEndpoint:key pathSuffix:suffix params:params object:nil completionWithCode:completion];
}

- (void)performRequestWithEndpoint:(id)key
                        pathSuffix:(NSString *)suffix
                            params:(NSDictionary *)params
                            object:(id)object
                completionWithCode:(PGCompletionWithCode)completion
{
  [self performRequestWithEndpoint:key pathSuffix:suffix params:params object:object headers:nil completionWithCode:completion];
}

#pragma mark More Convenience

void PGRequestWithCodes(PGBaseAPIClient *client,
                        id requestKey,
                        NSString *pathSuffix,
                        NSDictionary *params,
                        id bodyObject,
                        NSDictionary *headers,
                        PGCompletionWithCode completion)
{
  [client performRequestWithEndpoint:requestKey
                          pathSuffix:pathSuffix
                              params:params
                              object:bodyObject
                             headers:headers
                  completionWithCode:completion];
}

void PGRequest(PGBaseAPIClient *client,
               id requestKey,
               NSString *pathSuffix,
               NSDictionary *params,
               id bodyObject,
               NSDictionary *headers,
               PGCompletion completion)
{
  [client performRequestWithEndpoint:requestKey
                          pathSuffix:pathSuffix
                              params:params
                              object:bodyObject
                             headers:headers
                          completion:completion];
}

@end
