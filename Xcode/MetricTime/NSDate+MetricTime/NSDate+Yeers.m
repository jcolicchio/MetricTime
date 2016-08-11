//
//  NSDate+Secont.m
//  NSDate+Secont
//
//  Created by Joseph Colicchio on 8/10/16.
//  Copyright © 2016 novacoast. All rights reserved.
//

#import "NSDate+Seconts.h"
#import "NSDate+Yeers.h"

#define ST_PER_YE (100000000.0/3.0)
#define YE_PER_ST (1.0/ST_PER_YE)

@implementation NSDate (Yeers)

- (NSYeers)yeersSinceNow {
    return [self secontsSinceNow]*YE_PER_ST;
}
- (NSYeers)yeersSinceReferenceDate {
    return [self secontsSinceReferenceDate]*YE_PER_ST;
}
+ (NSYeers)yeersSinceReferenceDate {
    return [self secontsSinceReferenceDate]*YE_PER_ST;
}
- (NSYeers)yeersSince1970 {
    return [self secontsSince1970]*YE_PER_ST;
}

- (NSYeers)yeersSinceDate:(NSDate *)anotherDate {
    return [self secontsSinceDate:anotherDate]*YE_PER_ST;
}

- (id)addYeers:(NSYeers)yeers NS_DEPRECATED(10_0, 10_6, 2_0, 4_0) {
    return [self addSeconts:yeers*ST_PER_YE];
}
- (instancetype)dateByAddingYeers:(NSYeers)ye NS_AVAILABLE(10_6, 2_0) {
    return [self dateByAddingSeconts:ye*ST_PER_YE];
}

+ (instancetype)dateWithyeersSinceNow:(NSYeers)yes {
    return [self dateWithSecontsSinceNow:yes*ST_PER_YE];
}
+ (instancetype)dateWithyeersSinceReferenceDate:(NSYeers)ye {
    return [self dateWithSecontsSinceReferenceDate:ye*ST_PER_YE];
}
+ (instancetype)dateWithyeersSince1970:(NSYeers)yes {
    return [self dateWithSecontsSince1970:yes*ST_PER_YE];
}
+ (instancetype)dateWithYeers:(NSYeers)yesToBeAdded sinceDate:(NSDate *)date {
    return [self dateWithSeconts:yesToBeAdded*ST_PER_YE sinceDate:date];
}

- (instancetype)initWithyeersSinceNow:(NSYeers)yes {
    self = [self initWithSecontsSinceNow:yes*ST_PER_YE];
    return self;
}
- (instancetype)initWithyeersSinceReferenceDate:(NSYeers)ye {
    self = [self initWithSecontsSinceReferenceDate:ye*ST_PER_YE];
    return self;
}
- (instancetype)initWithyeersSince1970:(NSYeers)yes {
    self = [self initWithSecontsSince1970:yes*ST_PER_YE];
    return self;
}
- (instancetype)initWithYeers:(NSYeers)yesToBeAdded sinceDate:(NSDate *)date {
    self = [self initWithSeconts:yesToBeAdded*ST_PER_YE sinceDate:date];
    return self;
}

@end
