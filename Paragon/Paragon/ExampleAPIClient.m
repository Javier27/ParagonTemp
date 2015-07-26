//
//  ExampleAPIClient.m
//  Paragon
//
//  Created by Richie Davis on 7/26/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import "ExampleAPIClient.h"
#import "ExampleRequestManager.h"

@implementation ExampleAPIClient

- (void)getProductWithId:(NSNumber *)productId completion:(PGCompletion)completion
{
  [self performRequestWithEndpoint:@(ExampleEndpointGetProduct)
                        pathSuffix:[productId stringValue]
                        completion:completion];
}

@end
