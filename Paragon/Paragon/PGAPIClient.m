//
//  PGAPIClient.m
//  Paragon
//
//  Created by Richie Davis on 7/20/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import "PGAPIClient.h"
#import "AFHTTPRequestOperationManager.h"
#import "PGNetworkingManager.h"
#import "PGObjectMapping.h"

@interface PGAPIClient ()

@property (nonatomic, weak) AFHTTPRequestOperationManager *requestManager;
@property (nonatomic, weak) AFHTTPRequestOperationManager *jsonRequestManager;

@end

@implementation PGAPIClient

#pragma mark Networking Convenience

- (AFHTTPRequestOperationManager *)requestManager
{
  if (!_requestManager) _requestManager = [AFHTTPRequestOperationManager manager];
  return _requestManager;
}

- (AFHTTPRequestOperationManager *)jsonRequestManager
{
  if (!_jsonRequestManager){
    _jsonRequestManager = [AFHTTPRequestOperationManager manager];
    _jsonRequestManager.requestSerializer = [AFJSONRequestSerializer serializer];
  }
  
  return _jsonRequestManager;
}

- (void)GET:(NSString *)requestUrl
    success:(void(^)(id response, NSError *error))completion
{
  [self GET:requestUrl params:nil success:completion];
}

- (void)GET:(NSString *)requestUrl
     params:(NSDictionary *)params
    success:(void(^)(id response, NSError *error))completionBlock
{
  [self.requestManager GET:requestUrl
                parameters:params
                   success:^(AFHTTPRequestOperation *operation, id responseObject) {
                     if (completionBlock) completionBlock(responseObject, nil);
                   } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                     if (completionBlock) completionBlock(nil, error);
                   }];
}

- (void)POST:(NSString *)requestUrl
     success:(void(^)(id response, NSError *error))completion
{
  [self POST:requestUrl params:nil success:completion];
}

- (void)POST:(NSString *)requestUrl params:(NSDictionary *)params success:(void(^)(id response, NSError *error))completion
{
  [self.requestManager POST:requestUrl
                 parameters:params
                    success:^(AFHTTPRequestOperation *operation, id responseObject) {
                      if (completion) completion(responseObject, nil);
                    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                      if (completion) completion(nil, error);
                    }];
}

@end
