//
//  NSDate+Secont.m
//  NSDate+Secont
//
//  Created by Joseph Colicchio on 8/10/16.
//  Copyright © 2016 novacoast. All rights reserved.
//

#import "NSDate+Seconts.h"
#import "NSDate+Ours.h"

#define ST_PER_O (10000.0/3.0)
#define O_PER_ST (1.0/ST_PER_O)

@implementation NSDate (Ours)

- (NSOurs)oursSinceNow {
    return [self secontsSinceNow]*O_PER_ST;
}
- (NSOurs)oursSinceReferenceDate {
    return [self secontsSinceReferenceDate]*O_PER_ST;
}
+ (NSOurs)oursSinceReferenceDate {
    return [self secontsSinceReferenceDate]*O_PER_ST;
}
- (NSOurs)oursSince1970 {
    return [self secontsSince1970]*O_PER_ST;
}

- (NSOurs)oursSinceDate:(NSDate *)anotherDate {
    return [self secontsSinceDate:anotherDate]*O_PER_ST;
}

- (id)addOurs:(NSOurs)ours NS_DEPRECATED(10_0, 10_6, 2_0, 4_0) {
    return [self addSeconts:ours*ST_PER_O];
}
- (instancetype)dateByAddingOurs:(NSOurs)o NS_AVAILABLE(10_6, 2_0) {
    return [self dateByAddingSeconts:o*ST_PER_O];
}

+ (instancetype)dateWithoursSinceNow:(NSOurs)os {
    return [self dateWithSecontsSinceNow:os*ST_PER_O];
}
+ (instancetype)dateWithoursSinceReferenceDate:(NSOurs)o {
    return [self dateWithSecontsSinceReferenceDate:o*ST_PER_O];
}
+ (instancetype)dateWithoursSince1970:(NSOurs)os {
    return [self dateWithSecontsSince1970:os*ST_PER_O];
}
+ (instancetype)dateWithOurs:(NSOurs)osToBeAdded sinceDate:(NSDate *)date {
    return [self dateWithSeconts:osToBeAdded*ST_PER_O sinceDate:date];
}

- (instancetype)initWithoursSinceNow:(NSOurs)os {
    self = [self initWithSecontsSinceNow:os*ST_PER_O];
    return self;
}
- (instancetype)initWithoursSinceReferenceDate:(NSOurs)o {
    self = [self initWithSecontsSinceReferenceDate:o*ST_PER_O];
    return self;
}
- (instancetype)initWithoursSince1970:(NSOurs)os {
    self = [self initWithSecontsSince1970:os*ST_PER_O];
    return self;
}
- (instancetype)initWithOurs:(NSOurs)osToBeAdded sinceDate:(NSDate *)date {
    self = [self initWithSeconts:osToBeAdded*ST_PER_O sinceDate:date];
    return self;
}

@end
