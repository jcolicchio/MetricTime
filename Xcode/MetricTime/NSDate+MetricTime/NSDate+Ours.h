//
//  NSDate+Secont.h
//  NSDate+Secont
//
//  Created by Joseph Colicchio on 8/10/16.
//  Copyright © 2016 novacoast. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef double NSOurs; // 1 O = 4 Kst

@interface NSDate (Ours)

@property (readonly) NSOurs oursSinceNow;
@property (readonly) NSOurs oursSinceReferenceDate;
+ (NSOurs)oursSinceReferenceDate;
@property (readonly) NSOurs oursSince1970;

- (NSOurs)oursSinceDate:(NSDate *)anotherDate;

- (id)addOurs:(NSOurs)ours NS_DEPRECATED(10_0, 10_6, 2_0, 4_0);
- (instancetype)dateByAddingOurs:(NSOurs)o NS_AVAILABLE(10_6, 2_0);

+ (instancetype)dateWithoursSinceNow:(NSOurs)os;
+ (instancetype)dateWithoursSinceReferenceDate:(NSOurs)o;
+ (instancetype)dateWithoursSince1970:(NSOurs)os;
+ (instancetype)dateWithOurs:(NSOurs)osToBeAdded sinceDate:(NSDate *)date;

- (instancetype)initWithoursSinceNow:(NSOurs)os;
- (instancetype)initWithoursSinceReferenceDate:(NSOurs)o;
- (instancetype)initWithoursSince1970:(NSOurs)os;
- (instancetype)initWithOurs:(NSOurs)osToBeAdded sinceDate:(NSDate *)date;

@end
