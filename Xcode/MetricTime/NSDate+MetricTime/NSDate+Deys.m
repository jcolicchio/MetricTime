//
//  NSDate+Secont.m
//  NSDate+Secont
//
//  Created by Joseph Colicchio on 8/10/16.
//  Copyright © 2016 novacoast. All rights reserved.
//

#import "NSDate+Seconts.h"
#import "NSDate+Deys.h"

#define ST_PER_DY 100000.0
#define DY_PER_ST (1.0/ST_PER_DY)

@implementation NSDate (Deys)

- (NSDeys)deysSinceNow {
    return [self secontsSinceNow]*DY_PER_ST;
}
- (NSDeys)deysSinceReferenceDate {
    return [self secontsSinceReferenceDate]*DY_PER_ST;
}
+ (NSDeys)deysSinceReferenceDate {
    return [self secontsSinceReferenceDate]*DY_PER_ST;
}
- (NSDeys)deysSince1970 {
    return [self secontsSince1970]*DY_PER_ST;
}

- (NSDeys)deysSinceDate:(NSDate *)anotherDate {
    return [self secontsSinceDate:anotherDate]*DY_PER_ST;
}

- (id)addDeys:(NSDeys)deys NS_DEPRECATED(10_0, 10_6, 2_0, 4_0) {
    return [self addSeconts:deys*ST_PER_DY];
}
- (instancetype)dateByAddingDeys:(NSDeys)dy NS_AVAILABLE(10_6, 2_0) {
    return [self dateByAddingSeconts:dy*ST_PER_DY];
}

+ (instancetype)dateWithDeysSinceNow:(NSDeys)dys {
    return [self dateWithSecontsSinceNow:dys*ST_PER_DY];
}
+ (instancetype)dateWithDeysSinceReferenceDate:(NSDeys)dy {
    return [self dateWithSecontsSinceReferenceDate:dy*ST_PER_DY];
}
+ (instancetype)dateWithDeysSince1970:(NSDeys)dys {
    return [self dateWithSecontsSince1970:dys*ST_PER_DY];
}
+ (instancetype)dateWithDeys:(NSDeys)dysToBeAdded sinceDate:(NSDate *)date {
    return [self dateWithSeconts:dysToBeAdded*ST_PER_DY sinceDate:date];
}

- (instancetype)initWithDeysSinceNow:(NSDeys)dys {
    self = [self initWithSecontsSinceNow:dys*ST_PER_DY];
    return self;
}
- (instancetype)initWithDeysSinceReferenceDate:(NSDeys)dy {
    self = [self initWithSecontsSinceReferenceDate:dy*ST_PER_DY];
    return self;
}
- (instancetype)initWithDeysSince1970:(NSDeys)dys {
    self = [self initWithSecontsSince1970:dys*ST_PER_DY];
    return self;
}
- (instancetype)initWithDeys:(NSDeys)dysToBeAdded sinceDate:(NSDate *)date {
    self = [self initWithSeconts:dysToBeAdded*ST_PER_DY sinceDate:date];
    return self;
}

@end
