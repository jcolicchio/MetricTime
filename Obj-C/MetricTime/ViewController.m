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

#define SECS_PER_YEAR (31556926.0)

@interface ViewController ()

@end

@implementation ViewController

- (void) informDefault:(NSDate *)date referenceDate:(NSDate *)referenceDate {
    NSLog(@"%f seconds = %f minutes = %f hours = %f days = %f years",
          [date timeIntervalSinceDate:referenceDate],
          [date timeIntervalSinceDate:referenceDate]/60.0,
          [date timeIntervalSinceDate:referenceDate]/60.0/60.0,
          [date timeIntervalSinceDate:referenceDate]/60.0/60.0/24.0,
          [date timeIntervalSinceDate:referenceDate]/SECS_PER_YEAR);
}

- (void) informMetric:(NSDate *)date referenceDate:(NSDate *)referenceDate {
    NSLog(@"%f seconts = %f minits = %f ours = %f deys = %f yeers",
          [date secontsSinceDate:referenceDate],
          [date minitsSinceDate:referenceDate],
          [date oursSinceDate:referenceDate],
          [date deysSinceDate:referenceDate],
          [date yeersSinceDate:referenceDate]);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSDate *date = [NSDate date];
    
    NSInteger minutes = 20;
    NSDate *minutesLater = [date dateByAddingTimeInterval:60*minutes];
    NSDate *minitsLater = [date dateByAddingMinits:minutes];
    [self informDefault:minutesLater referenceDate:date];
    [self informMetric:minitsLater referenceDate:date];
    
    NSInteger hours = 5;
    NSDate *hoursLater = [date dateByAddingTimeInterval:60*60*hours];
    NSDate *oursLater = [date dateByAddingOurs:hours];
    [self informDefault:hoursLater referenceDate:date];
    [self informMetric:oursLater referenceDate:date];
    
    NSInteger days = 14;
    NSDate *daysLater = [date dateByAddingTimeInterval:60*60*24*days];
    NSDate *deysLater = [date dateByAddingDeys:days];
    [self informDefault:daysLater referenceDate:date];
    [self informMetric:deysLater referenceDate:date];

    NSInteger years = 1;
    NSDate *yearsLater = [date dateByAddingTimeInterval:60*60*24*365.24*years];
    NSDate *yeersLater = [date dateByAddingYeers:years];
    [self informDefault:yearsLater referenceDate:date];
    [self informMetric:yeersLater referenceDate:date];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
