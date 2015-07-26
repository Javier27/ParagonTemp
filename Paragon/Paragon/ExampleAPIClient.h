//
//  ExampleAPIClient.h
//  Paragon
//
//  Created by Richie Davis on 7/26/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import "PGAPIClient.h"

@interface ExampleAPIClient : PGAPIClient

- (void)getProductWithId:(NSNumber *)productId completion:(PGCompletion)completion;

@end
