//
//  ViewController.m
//  Paragon
//
//  Created by Richie Davis on 7/15/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import "ViewController.h"
#import "Product.h"
#import "Price.h"
#import "ExampleAPIClient.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *productImage;
@property (weak, nonatomic) IBOutlet UILabel *productTitle;
@property (weak, nonatomic) IBOutlet UILabel *productRating;
@property (weak, nonatomic) IBOutlet UILabel *productReviewCount;
@property (weak, nonatomic) IBOutlet UILabel *productPrice;
@property (weak, nonatomic) IBOutlet UILabel *productIngredients;

@property (nonatomic, strong) ExampleAPIClient *apiClient;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  [self fetchProduct];
}

- (void)fetchProduct
{
  _apiClient = [[ExampleAPIClient alloc] init];
  [_apiClient getProductWithId:@(59) completion:^(id response, id error) {
    if (response) [self updateWithProduct:response];
  }];
}

- (void)updateWithProduct:(Product *)product
{
  _productTitle.text = product.name;
  _productRating.text = [product.rating stringValue];
  _productReviewCount.text = [NSString stringWithFormat:@"%@ %@", product.reviewCount, @"Reviews"];
  _productPrice.text = product.price.amount.stringValue;
  _productIngredients.text = product.ingredients;
}

@end
