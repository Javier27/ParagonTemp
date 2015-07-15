//
//  ViewController.m
//  Paragon
//
//  Created by Richie Davis on 7/15/15.
//  Copyright (c) 2015 Davis Development. All rights reserved.
//

#import "ViewController.h"
#import "AFHTTPRequestOperationManager.h"
#import "PGObjectMapping.h"
#import "Product.h"
#import "Price.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *productImage;
@property (weak, nonatomic) IBOutlet UILabel *productTitle;
@property (weak, nonatomic) IBOutlet UILabel *productRating;
@property (weak, nonatomic) IBOutlet UILabel *productReviewCount;
@property (weak, nonatomic) IBOutlet UILabel *productPrice;
@property (weak, nonatomic) IBOutlet UILabel *productIngredients;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  [self fetchProduct];
}

- (void)fetchProduct
{
  AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
  [manager GET:@"https://api.birchbox.com/products/59" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
    NSLog(@"JSON: %@", responseObject);
    Product *product = [[Product mapping] objectFromDictionary:responseObject];
    if (product) [self updateWithProduct:product];
  } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
    NSLog(@"Error: %@", error);
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
