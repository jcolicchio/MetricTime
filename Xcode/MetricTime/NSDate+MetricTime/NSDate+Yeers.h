//
//  NSDate+Secont.h
//  NSDate+Secont
//
//  Created by Joseph Colicchio on 8/10/16.
//  Copyright © 2016 novacoast. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef double NSYeers; // 1 Ye = 33.333 Mst

@interface NSDate (Yeers)

@property (readonly) NSYeers yeersSinceNow;
@property (readonly) NSYeers yeersSinceReferenceDate;
+ (NSYeers)yeersSinceReferenceDate;
@property (readonly) NSYeers yeersSince1970;

- (NSYeers)yeersSinceDate:(NSDate *)anotherDate;

- (id)addYeers:(NSYeers)yeers NS_DEPRECATED(10_0, 10_6, 2_0, 4_0);
- (instancetype)dateByAddingYeers:(NSYeers)ye NS_AVAILABLE(10_6, 2_0);

+ (instancetype)dateWithyeersSinceNow:(NSYeers)yes;
+ (instancetype)dateWithyeersSinceReferenceDate:(NSYeers)ye;
+ (instancetype)dateWithyeersSince1970:(NSYeers)yes;
+ (instancetype)dateWithYeers:(NSYeers)yesToBeAdded sinceDate:(NSDate *)date;

- (instancetype)initWithyeersSinceNow:(NSYeers)yes;
- (instancetype)initWithyeersSinceReferenceDate:(NSYeers)ye;
- (instancetype)initWithyeersSince1970:(NSYeers)yes;
- (instancetype)initWithYeers:(NSYeers)yesToBeAdded sinceDate:(NSDate *)date;

@end
