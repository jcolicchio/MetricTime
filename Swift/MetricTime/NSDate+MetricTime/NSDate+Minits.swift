//
//  MetricTimeExtension.swift
//  MetricTime
//
//  Created by Joseph Colicchio on 8/11/16.
//  Copyright © 2016 novacoast. All rights reserved.
//

import Foundation

public typealias Minits = Double;
private let S_PER_MT = (3.0*31556926.0/1000000.0);
private let MT_PER_S = (1.0/S_PER_MT);

public var MinitsSince1970: Minits {
    return NSTimeIntervalSince1970*MT_PER_S;
}

public extension NSDate {
    
    convenience init(minitsSinceReferenceDate:Minits) {
        self.init(timeIntervalSinceReferenceDate:minitsSinceReferenceDate*S_PER_MT);
    }
    convenience init(minitsSinceNow:Minits) {
        self.init(timeIntervalSinceNow:minitsSinceNow*S_PER_MT);
    }
    convenience init(minitsSince1970:Minits) {
        self.init(timeIntervalSince1970:minitsSince1970*S_PER_MT);
    }
    convenience init(minits:Minits, sinceDate:NSDate) {
        self.init(timeInterval:minits*S_PER_MT, sinceDate:sinceDate);
    }
    
    public class func minitsSinceReferenceDate() -> Minits {
        return self.timeIntervalSinceReferenceDate()*MT_PER_S;
    }
    
    func dateByAddingMinits(minits:Minits) -> NSDate {
        return self.dateByAddingTimeInterval(minits*S_PER_MT);
    }
    
    func minitsSinceReferenceDate() -> Minits {
        return self.timeIntervalSinceReferenceDate*MT_PER_S;
    }
    func minitsSinceDate(anotherDate:NSDate) -> Minits {
        return self.timeIntervalSinceDate(anotherDate)*MT_PER_S;
    }
    func minitsSinceNow() -> Minits {
        return self.timeIntervalSinceNow*MT_PER_S;
    }
    func minitsSince1970() -> Minits {
        return self.timeIntervalSince1970*MT_PER_S;
    }
    
}