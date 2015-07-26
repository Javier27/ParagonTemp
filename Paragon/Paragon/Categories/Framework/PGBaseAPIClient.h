//
//  PGBaseAPIClient.h
//  Paragon
//
//  Created by Richie Davis on 7/26/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFHTTPRequestOperation.h"

typedef void (^PGCompletion)(id response, id error);
typedef void (^PGCompletionWithCode)(NSInteger statusCode, id response, id error);
typedef void (^AFSuccess)(AFHTTPRequestOperation *operation, id responseObject);
typedef void (^AFFailure)(AFHTTPRequestOperation *operation, NSError *error);

@interface PGBaseAPIClient : NSObject

// request methods with status code

- (void)performRequestWithEndpoint:(id)key
                        pathSuffix:(NSString *)suffix
                            params:(NSDictionary *)params
                            object:(id)object
                           headers:(NSDictionary *)headers
                completionWithCode:(PGCompletionWithCode)completion;

// request without status code

- (void)performRequestWithEndpoint:(id)key
                        pathSuffix:(NSString *)suffix
                            params:(NSDictionary *)params
                            object:(id)object
                           headers:(NSDictionary *)headers
                        completion:(PGCompletion)completion;

@end
