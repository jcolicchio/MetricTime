//
//  NSDate+Secont.m
//  NSDate+Secont
//
//  Created by Joseph Colicchio on 8/10/16.
//  Copyright © 2016 novacoast. All rights reserved.
//

#import "NSDate+Seconts.h"
#import "NSDate+Minits.h"

#define ST_PER_MT 100.0
#define MT_PER_ST (1.0/ST_PER_MT)

@implementation NSDate (Minits)

- (NSMinits)minitsSinceNow {
    return [self secontsSinceNow]*MT_PER_ST;
}
- (NSMinits)minitsSinceReferenceDate {
    return [self secontsSinceReferenceDate]*MT_PER_ST;
}
+ (NSMinits)minitsSinceReferenceDate {
    return [self secontsSinceReferenceDate]*MT_PER_ST;
}
- (NSMinits)minitsSince1970 {
    return [self secontsSince1970]*MT_PER_ST;
}

- (NSMinits)minitsSinceDate:(NSDate *)anotherDate {
    return [self secontsSinceDate:anotherDate]*MT_PER_ST;
}

- (id)addMinits:(NSMinits)minits NS_DEPRECATED(10_0, 10_6, 2_0, 4_0) {
    return [self addSeconts:minits*ST_PER_MT];
}
- (instancetype)dateByAddingMinits:(NSMinits)mt NS_AVAILABLE(10_6, 2_0) {
    return [self dateByAddingSeconts:mt*ST_PER_MT];
}

+ (instancetype)dateWithminitsSinceNow:(NSMinits)mts {
    return [self dateWithSecontsSinceNow:mts*ST_PER_MT];
}
+ (instancetype)dateWithminitsSinceReferenceDate:(NSMinits)mt {
    return [self dateWithSecontsSinceReferenceDate:mt*ST_PER_MT];
}
+ (instancetype)dateWithminitsSince1970:(NSMinits)mts {
    return [self dateWithSecontsSince1970:mts*ST_PER_MT];
}
+ (instancetype)dateWithMinits:(NSMinits)mtsToBeAdded sinceDate:(NSDate *)date {
    return [self dateWithSeconts:mtsToBeAdded*ST_PER_MT sinceDate:date];
}

- (instancetype)initWithminitsSinceNow:(NSMinits)mts {
    self = [self initWithSecontsSinceNow:mts*ST_PER_MT];
    return self;
}
- (instancetype)initWithminitsSinceReferenceDate:(NSMinits)mt {
    self = [self initWithSecontsSinceReferenceDate:mt*ST_PER_MT];
    return self;
}
- (instancetype)initWithminitsSince1970:(NSMinits)mts {
    self = [self initWithSecontsSince1970:mts*ST_PER_MT];
    return self;
}
- (instancetype)initWithMinits:(NSMinits)mtsToBeAdded sinceDate:(NSDate *)date {
    self = [self initWithSeconts:mtsToBeAdded*ST_PER_MT sinceDate:date];
    return self;
}

@end
