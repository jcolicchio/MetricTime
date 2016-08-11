//
//  MetricTimeExtension.swift
//  MetricTime
//
//  Created by Joseph Colicchio on 8/11/16.
//  Copyright © 2016 novacoast. All rights reserved.
//

import Foundation

public typealias Yeers = Double;
private let S_PER_YE = 31556926.0;
private let YE_PER_S = (1.0/S_PER_YE);

public var YeersSince1970: Yeers {
    return NSTimeIntervalSince1970*YE_PER_S;
}

public extension NSDate {
    
    convenience init(yeersSinceReferenceDate:Yeers) {
        self.init(timeIntervalSinceReferenceDate:yeersSinceReferenceDate*S_PER_YE);
    }
    convenience init(yeersSinceNow:Yeers) {
        self.init(timeIntervalSinceNow:yeersSinceNow*S_PER_YE);
    }
    convenience init(yeersSince1970:Yeers) {
        self.init(timeIntervalSince1970:yeersSince1970*S_PER_YE);
    }
    convenience init(yeers:Yeers, sinceDate:NSDate) {
        self.init(timeInterval:yeers*S_PER_YE, sinceDate:sinceDate);
    }
    
    public class func yeersSinceReferenceDate() -> Yeers {
        return self.timeIntervalSinceReferenceDate()*YE_PER_S;
    }
    
    func dateByAddingYeers(yeers:Yeers) -> NSDate {
        return self.dateByAddingTimeInterval(yeers*S_PER_YE);
    }
    
    func yeersSinceReferenceDate() -> Yeers {
        return self.timeIntervalSinceReferenceDate*YE_PER_S;
    }
    func yeersSinceDate(anotherDate:NSDate) -> Yeers {
        return self.timeIntervalSinceDate(anotherDate)*YE_PER_S;
    }
    func yeersSinceNow() -> Yeers {
        return self.timeIntervalSinceNow*YE_PER_S;
    }
    func yeersSince1970() -> Yeers {
        return self.timeIntervalSince1970*YE_PER_S;
    }
    
}