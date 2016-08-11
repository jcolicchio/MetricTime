//
//  ViewController.m
//  NSDate+Secont
//
//  Created by Joseph Colicchio on 8/10/16.
//  Copyright © 2016 novacoast. All rights reserved.
//

#import "ViewController.h"

#import "NSDate+MetricTime.h"

#define SECS_PER_YEAR (31556926.0)

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSDate *date = [NSDate date];
    
    NSInteger minutes = 20;
    NSDate *minutesLater = [date dateByAddingTimeInterval:60*minutes];
    NSLog(@"%lu minutes is %f seconds, or %f hours, or %f days, or %f years",
          minutes,
          [minutesLater timeIntervalSinceDate:date],
          [minutesLater timeIntervalSinceDate:date]/60/60,
          [minutesLater timeIntervalSinceDate:date]/60/60/24,
          [minutesLater timeIntervalSinceDate:date]/SECS_PER_YEAR);
    
    NSDate *minitsLater = [date dateByAddingMinits:minutes];
    NSLog(@"%lu minits is %f seconts, or %f minutes, or %f ours, or %f deys, or %f yeers",
          minutes,
          [minitsLater secontsSinceDate:date],
          [minitsLater timeIntervalSinceDate:date]/60,
          [minitsLater oursSinceDate:date],
          [minitsLater deysSinceDate:date],
          [minitsLater yeersSinceDate:date]);
    
    NSInteger hours = 5;
    NSDate *hoursLater = [date dateByAddingTimeInterval:60*60*hours];
    NSLog(@"%lu hours is %f seconds, or %f minutes, or %f days, or %f years",
          hours,
          [hoursLater timeIntervalSinceDate:date],
          [hoursLater timeIntervalSinceDate:date]/60,
          [hoursLater timeIntervalSinceDate:date]/60/60/24,
          [hoursLater timeIntervalSinceDate:date]/SECS_PER_YEAR);
    
    NSDate *oursLater = [date dateByAddingOurs:hours];
    NSLog(@"%lu ours is %f seconts, or %f minits, or %f hours, %f deys, or %f yeers",
          hours,
          [oursLater secontsSinceDate:date],
          [oursLater minitsSinceDate:date],
          [oursLater timeIntervalSinceDate:date]/60/60,
          [oursLater deysSinceDate:date],
          [oursLater yeersSinceDate:date]);
    
    NSInteger days = 14;
    NSDate *daysLater = [date dateByAddingTimeInterval:60*60*24*days];
    NSLog(@"%lu days is %f seconds, or %f minutes, or %f hours, or %f days, or %f years",
          days,
          [daysLater timeIntervalSinceDate:date],
          [daysLater timeIntervalSinceDate:date]/60,
          [daysLater timeIntervalSinceDate:date]/60/60,
          [daysLater timeIntervalSinceDate:date]/60/60/24,
          [daysLater timeIntervalSinceDate:date]/SECS_PER_YEAR);
    
    NSDate *deysLater = [date dateByAddingDeys:days];
    NSLog(@"%lu deys is %f seconts, or %f minits, or %f ours, or %f days, or %f yeers",
          days,
          [deysLater secontsSinceDate:date],
          [deysLater minitsSinceDate:date],
          [deysLater oursSinceDate:date],
          [deysLater timeIntervalSinceDate:date]/60/60/24,
          [deysLater yeersSinceDate:date]);
    
    NSInteger years = 1;
    NSDate *yearsLater = [date dateByAddingTimeInterval:60*60*24*365.24*years];
    NSLog(@"%lu years is %f seconds, or %f minutes, or %f hours, or %f days",
          years,
          [yearsLater timeIntervalSinceDate:date],
          [yearsLater timeIntervalSinceDate:date]/60,
          [yearsLater timeIntervalSinceDate:date]/60/60,
          [yearsLater timeIntervalSinceDate:date]/60/60/24);
    
    NSDate *yeersLater = [date dateByAddingYeers:years];
    NSLog(@"%lu yeers is %f seconts, or %f minits, or %f ours, or %f deys, or %f years",
          years,
          [yeersLater secontsSinceDate:date],
          [yeersLater minitsSinceDate:date],
          [yeersLater oursSinceDate:date],
          [yeersLater deysSinceDate:date],
          [yeersLater timeIntervalSinceDate:date]/SECS_PER_YEAR);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
