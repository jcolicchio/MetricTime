//
//  NSDate+Secont.h
//  NSDate+Secont
//
//  Created by Joseph Colicchio on 8/10/16.
//  Copyright © 2016 novacoast. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef double NSSeconts; // 1 st = 0.94670208 s

@interface NSDate (Seconts)

@property (readonly) NSSeconts secontsSinceNow;
@property (readonly) NSSeconts secontsSinceReferenceDate;
+ (NSSeconts)secontsSinceReferenceDate;
@property (readonly) NSSeconts secontsSince1970;

- (NSSeconts)secontsSinceDate:(NSDate *)anotherDate;

- (id)addSeconts:(NSSeconts)seconts NS_DEPRECATED(10_0, 10_6, 2_0, 4_0);
- (instancetype)dateByAddingSeconts:(NSSeconts)st NS_AVAILABLE(10_6, 2_0);

+ (instancetype)dateWithSecontsSinceNow:(NSSeconts)sts;
+ (instancetype)dateWithSecontsSinceReferenceDate:(NSSeconts)st;
+ (instancetype)dateWithSecontsSince1970:(NSSeconts)sts;
+ (instancetype)dateWithSeconts:(NSSeconts)stsToBeAdded sinceDate:(NSDate *)date;

- (instancetype)initWithSecontsSinceNow:(NSSeconts)sts;
- (instancetype)initWithSecontsSinceReferenceDate:(NSSeconts)st;
- (instancetype)initWithSecontsSince1970:(NSSeconts)sts;
- (instancetype)initWithSeconts:(NSSeconts)stsToBeAdded sinceDate:(NSDate *)date;

@end
