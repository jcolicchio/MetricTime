//
//  NSDate+Secont.h
//  NSDate+Secont
//
//  Created by Joseph Colicchio on 8/10/16.
//  Copyright © 2016 novacoast. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef double NSOurs; // 1 O = 3.33 Kst

@interface NSDate (Ours)

@property (readonly) NSOurs oursSinceNow;
@property (readonly) NSOurs oursSinceReferenceDate;
+ (NSOurs)oursSinceReferenceDate;
@property (readonly) NSOurs oursSince1970;

- (NSOurs)oursSinceDate:(NSDate *)anotherDate;

- (id)addOurs:(NSOurs)ours NS_DEPRECATED(10_0, 10_6, 2_0, 4_0);
- (instancetype)dateByAddingOurs:(NSOurs)o NS_AVAILABLE(10_6, 2_0);

+ (instancetype)dateWithOursSinceNow:(NSOurs)os;
+ (instancetype)dateWithOursSinceReferenceDate:(NSOurs)o;
+ (instancetype)dateWithOursSince1970:(NSOurs)os;
+ (instancetype)dateWithOurs:(NSOurs)osToBeAdded sinceDate:(NSDate *)date;

- (instancetype)initWithOursSinceNow:(NSOurs)os;
- (instancetype)initWithOursSinceReferenceDate:(NSOurs)o;
- (instancetype)initWithOursSince1970:(NSOurs)os;
- (instancetype)initWithOurs:(NSOurs)osToBeAdded sinceDate:(NSDate *)date;

@end
