//
//  NSDate+Secont.h
//  NSDate+Secont
//
//  Created by Joseph Colicchio on 8/10/16.
//  Copyright © 2016 novacoast. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef double NSDeys; // 1 Dy = 30 O, 1 KMt, 100 Kst

@interface NSDate (Deys)

@property (readonly) NSDeys deysSinceNow;
@property (readonly) NSDeys deysSinceReferenceDate;
+ (NSDeys)deysSinceReferenceDate;
@property (readonly) NSDeys deysSince1970;

- (NSDeys)deysSinceDate:(NSDate *)anotherDate;

- (id)addDeys:(NSDeys)deys NS_DEPRECATED(10_0, 10_6, 2_0, 4_0);
- (instancetype)dateByAddingDeys:(NSDeys)dy NS_AVAILABLE(10_6, 2_0);

+ (instancetype)dateWithDeysSinceNow:(NSDeys)dys;
+ (instancetype)dateWithDeysSinceReferenceDate:(NSDeys)dy;
+ (instancetype)dateWithDeysSince1970:(NSDeys)dys;
+ (instancetype)dateWithDeys:(NSDeys)dysToBeAdded sinceDate:(NSDate *)date;

- (instancetype)initWithDeysSinceNow:(NSDeys)dys;
- (instancetype)initWithDeysSinceReferenceDate:(NSDeys)dy;
- (instancetype)initWithDeysSince1970:(NSDeys)dys;
- (instancetype)initWithDeys:(NSDeys)dysToBeAdded sinceDate:(NSDate *)date;

@end
