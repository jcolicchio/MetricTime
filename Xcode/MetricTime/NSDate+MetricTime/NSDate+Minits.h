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

+ (instancetype)dateWithminitsSinceNow:(NSMinits)mts;
+ (instancetype)dateWithminitsSinceReferenceDate:(NSMinits)mt;
+ (instancetype)dateWithminitsSince1970:(NSMinits)mts;
+ (instancetype)dateWithMinits:(NSMinits)mtsToBeAdded sinceDate:(NSDate *)date;

- (instancetype)initWithminitsSinceNow:(NSMinits)mts;
- (instancetype)initWithminitsSinceReferenceDate:(NSMinits)mt;
- (instancetype)initWithminitsSince1970:(NSMinits)mts;
- (instancetype)initWithMinits:(NSMinits)mtsToBeAdded sinceDate:(NSDate *)date;

@end
