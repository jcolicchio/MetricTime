//
//  NSDate+Secont.h
//  NSDate+Secont
//
//  Created by Joseph Colicchio on 8/10/16.
//  Copyright © 2016 novacoast. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef double NSMinits; // 1 Mt = 100 st

@interface NSDate (Minits)

@property (readonly) NSMinits minitsSinceNow;
@property (readonly) NSMinits minitsSinceReferenceDate;
+ (NSMinits)minitsSinceReferenceDate;
@property (readonly) NSMinits minitsSince1970;

- (NSMinits)minitsSinceDate:(NSDate *)anotherDate;

- (id)addMinits:(NSMinits)minits NS_DEPRECATED(10_0, 10_6, 2_0, 4_0);
- (instancetype)dateByAddingMinits:(NSMinits)mt NS_AVAILABLE(10_6, 2_0);

+ (instancetype)dateWithMinitsSinceNow:(NSMinits)mts;
+ (instancetype)dateWithMinitsSinceReferenceDate:(NSMinits)mt;
+ (instancetype)dateWithMinitsSince1970:(NSMinits)mts;
+ (instancetype)dateWithMinits:(NSMinits)mtsToBeAdded sinceDate:(NSDate *)date;

- (instancetype)initWithMinitsSinceNow:(NSMinits)mts;
- (instancetype)initWithMinitsSinceReferenceDate:(NSMinits)mt;
- (instancetype)initWithMinitsSince1970:(NSMinits)mts;
- (instancetype)initWithMinits:(NSMinits)mtsToBeAdded sinceDate:(NSDate *)date;

@end
