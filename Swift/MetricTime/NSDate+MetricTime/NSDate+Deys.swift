//
//  MetricTimeExtension.swift
//  MetricTime
//
//  Created by Joseph Colicchio on 8/11/16.
//  Copyright © 2016 novacoast. All rights reserved.
//

import Foundation

public typealias Deys = Double;
private let S_PER_DY = (3000*31556926.0);
private let DY_PER_S = (1.0/S_PER_DY);

public var DeysSince1970: Deys {
    return NSTimeIntervalSince1970*DY_PER_S;
}

public extension NSDate {
    
    convenience init(deysSinceReferenceDate:Deys) {
        self.init(timeIntervalSinceReferenceDate:deysSinceReferenceDate*S_PER_DY);
    }
    convenience init(deysSinceNow:Deys) {
        self.init(timeIntervalSinceNow:deysSinceNow*S_PER_DY);
    }
    convenience init(deysSince1970:Deys) {
        self.init(timeIntervalSince1970:deysSince1970*S_PER_DY);
    }
    convenience init(deys:Deys, sinceDate:NSDate) {
        self.init(timeInterval:deys*S_PER_DY, sinceDate:sinceDate);
    }
    
    public class func deysSinceReferenceDate() -> Deys {
        return self.timeIntervalSinceReferenceDate()*DY_PER_S;
    }
    
    func dateByAddingDeys(deys:Deys) -> NSDate {
        return self.dateByAddingTimeInterval(deys*S_PER_DY);
    }
    
    func deysSinceReferenceDate() -> Deys {
        return self.timeIntervalSinceReferenceDate*DY_PER_S;
    }
    func deysSinceDate(anotherDate:NSDate) -> Deys {
        return self.timeIntervalSinceDate(anotherDate)*DY_PER_S;
    }
    func deysSinceNow() -> Deys {
        return self.timeIntervalSinceNow*DY_PER_S;
    }
    func deysSince1970() -> Deys {
        return self.timeIntervalSince1970*DY_PER_S;
    }
    
}