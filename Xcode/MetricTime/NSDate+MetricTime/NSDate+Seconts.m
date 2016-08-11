//
//  NSDate+Secont.m
//  NSDate+Secont
//
//  Created by Joseph Colicchio on 8/10/16.
//  Copyright © 2016 novacoast. All rights reserved.
//

#import "NSDate+Seconts.h"

#define S_PER_ST 0.94670208
#define ST_PER_S (1.0/S_PER_ST)

@implementation NSDate (Seconts)

- (NSSeconts)secontsSinceNow {
    return [self timeIntervalSinceNow]*ST_PER_S;
}
- (NSSeconts)secontsSinceReferenceDate {
    return [self timeIntervalSinceReferenceDate]/S_PER_ST;
}
+ (NSSeconts)secontsSinceReferenceDate {
    return [self timeIntervalSinceReferenceDate]*ST_PER_S;
}
- (NSSeconts)secontsSince1970 {
    return [self timeIntervalSince1970]*ST_PER_S;
}

- (NSSeconts)secontsSinceDate:(NSDate *)anotherDate {
    return [self timeIntervalSinceDate:anotherDate]*ST_PER_S;
}

- (id)addSeconts:(NSSeconts)seconts NS_DEPRECATED(10_0, 10_6, 2_0, 4_0) {
    return [self addTimeInterval:seconts*S_PER_ST];
}
- (instancetype)dateByAddingSeconts:(NSSeconts)st NS_AVAILABLE(10_6, 2_0) {
    return [self dateByAddingTimeInterval:st*S_PER_ST];
}

+ (instancetype)dateWithSecontsSinceNow:(NSSeconts)sts {
    return [self dateWithTimeIntervalSinceNow:sts*S_PER_ST];
}
+ (instancetype)dateWithSecontsSinceReferenceDate:(NSSeconts)st {
    return [self dateWithTimeIntervalSinceReferenceDate:st*S_PER_ST];
}
+ (instancetype)dateWithSecontsSince1970:(NSSeconts)sts {
    return [self dateWithTimeIntervalSince1970:sts*S_PER_ST];
}
+ (instancetype)dateWithSeconts:(NSSeconts)stsToBeAdded sinceDate:(NSDate *)date {
    return [self dateWithTimeInterval:stsToBeAdded*S_PER_ST sinceDate:date];
}

- (instancetype)initWithSecontsSinceNow:(NSSeconts)sts {
    self = [self initWithTimeIntervalSinceNow:sts*S_PER_ST];
    return self;
}
- (instancetype)initWithSecontsSinceReferenceDate:(NSSeconts)st {
    self = [self initWithTimeIntervalSinceReferenceDate:st*S_PER_ST];
    return self;
}
- (instancetype)initWithSecontsSince1970:(NSSeconts)sts {
    self = [self initWithTimeIntervalSince1970:sts*S_PER_ST];
    return self;
}
- (instancetype)initWithSeconts:(NSSeconts)stsToBeAdded sinceDate:(NSDate *)date {
    self = [self initWithTimeInterval:stsToBeAdded*S_PER_ST sinceDate:date];
    return self;
}

@end
