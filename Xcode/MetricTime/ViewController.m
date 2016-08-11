//
//  ViewController.m
//  NSDate+Secont
//
//  Created by Joseph Colicchio on 8/10/16.
//  Copyright © 2016 novacoast. All rights reserved.
//

#import "ViewController.h"

#import "NSDate+Seconts.h"
#import "NSDate+Minits.h"
#import "NSDate+Ours.h"
#import "NSDate+Deys.h"
#import "NSDate+Yeers.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSDate *date = [NSDate date];
    
    NSDate *twoHoursLater = [date dateByAddingTimeInterval:60*60*2];
    NSLog(@"2 hours is %f seconds, or %f minutes",
          [twoHoursLater timeIntervalSinceDate:date],
          [twoHoursLater timeIntervalSinceDate:date]/60);
    
    NSDate *twoOursLater = [date dateByAddingOurs:2];
    NSLog(@"2 ours is %f seconts, or %f minits",
          [twoOursLater secontsSinceDate:date],
          [twoOursLater minitsSinceDate:date]);
    
    NSDate *threeDaysLater = [date dateByAddingTimeInterval:60*60*24*3];
    NSLog(@"3 days is %f seconds, or %f minutes, or %f hours",
          [threeDaysLater timeIntervalSinceDate:date],
          [threeDaysLater timeIntervalSinceDate:date]/60,
          [threeDaysLater timeIntervalSinceDate:date]/60/60);
    
    NSDate *threeDeysLater = [date dateByAddingDeys:3];
    NSLog(@"3 deys is %f seconts, or %f minits, or %f ours",
          [threeDeysLater secontsSinceDate:date],
          [threeDeysLater minitsSinceDate:date],
          [threeDeysLater oursSinceDate:date]);
    
    NSDate *threeYearsLater = [date dateByAddingTimeInterval:60*60*24*365.24*3];
    NSLog(@"3 years is %f seconds, or %f minutes, or %f hours, or %f days",
          [threeYearsLater timeIntervalSinceDate:date],
          [threeYearsLater timeIntervalSinceDate:date]/60,
          [threeYearsLater timeIntervalSinceDate:date]/60/60,
          [threeYearsLater timeIntervalSinceDate:date]/60/60/24);
    
    NSDate *threeYeersLater = [date dateByAddingYeers:3];
    NSLog(@"3 yeers is %f seconts, or %f minits, or %f ours, or %f deys",
          [threeYeersLater secontsSinceDate:date],
          [threeYeersLater minitsSinceDate:date],
          [threeYeersLater oursSinceDate:date],
          [threeYeersLater deysSinceDate:date]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
