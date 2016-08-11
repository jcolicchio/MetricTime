//
//  MetricTimeExtension.swift
//  MetricTime
//
//  Created by Joseph Colicchio on 8/11/16.
//  Copyright © 2016 novacoast. All rights reserved.
//

import Foundation

public typealias Seconts = Double;
private let S_PER_ST = (3.0*31556926.0/100000000.0);
private let ST_PER_S = (1.0/S_PER_ST);

public var SecontsSince1970: Seconts {
    return NSTimeIntervalSince1970*ST_PER_S;
}

public extension NSDate {
    
    convenience init(secontsSinceReferenceDate:Seconts) {
        self.init(timeIntervalSinceReferenceDate:secontsSinceReferenceDate*S_PER_ST);
    }
    convenience init(secontsSinceNow:Seconts) {
        self.init(timeIntervalSinceNow:secontsSinceNow*S_PER_ST);
    }
    convenience init(secontsSince1970:Seconts) {
        self.init(timeIntervalSince1970:secontsSince1970*S_PER_ST);
    }
    convenience init(seconts:Seconts, sinceDate:NSDate) {
        self.init(timeInterval:seconts*S_PER_ST, sinceDate:sinceDate);
    }
    
    public class func secontsSinceReferenceDate() -> Seconts {
        return self.timeIntervalSinceReferenceDate()*ST_PER_S;
    }
    
    func dateByAddingSeconts(seconts:Seconts) -> NSDate {
        return self.dateByAddingTimeInterval(seconts*S_PER_ST);
    }
    
    func secontsSinceReferenceDate() -> Seconts {
        return self.timeIntervalSinceReferenceDate*ST_PER_S;
    }
    func secontsSinceDate(anotherDate:NSDate) -> Seconts {
        return self.timeIntervalSinceDate(anotherDate)*ST_PER_S;
    }
    func secontsSinceNow() -> Seconts {
        return self.timeIntervalSinceNow*ST_PER_S;
    }
    func secontsSince1970() -> Seconts {
        return self.timeIntervalSince1970*ST_PER_S;
    }
    
}