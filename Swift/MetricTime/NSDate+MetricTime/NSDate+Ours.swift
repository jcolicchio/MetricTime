//
//  MetricTimeExtension.swift
//  MetricTime
//
//  Created by Joseph Colicchio on 8/11/16.
//  Copyright © 2016 novacoast. All rights reserved.
//

import Foundation

public typealias Ours = Double;
private let S_PER_O = (31556926.0/10000.0);
private let O_PER_S = (1.0/S_PER_O);

public var OursSince1970: Ours {
    return NSTimeIntervalSince1970*O_PER_S;
}

public extension NSDate {
    
    convenience init(oursSinceReferenceDate:Ours) {
        self.init(timeIntervalSinceReferenceDate:oursSinceReferenceDate*S_PER_O);
    }
    convenience init(oursSinceNow:Ours) {
        self.init(timeIntervalSinceNow:oursSinceNow*S_PER_O);
    }
    convenience init(oursSince1970:Ours) {
        self.init(timeIntervalSince1970:oursSince1970*S_PER_O);
    }
    convenience init(ours:Ours, sinceDate:NSDate) {
        self.init(timeInterval:ours*S_PER_O, sinceDate:sinceDate);
    }
    
    public class func oursSinceReferenceDate() -> Ours {
        return self.timeIntervalSinceReferenceDate()*O_PER_S;
    }
    
    func dateByAddingOurs(ours:Ours) -> NSDate {
        return self.dateByAddingTimeInterval(ours*S_PER_O);
    }
    
    func oursSinceReferenceDate() -> Ours {
        return self.timeIntervalSinceReferenceDate*O_PER_S;
    }
    func oursSinceDate(anotherDate:NSDate) -> Ours {
        return self.timeIntervalSinceDate(anotherDate)*O_PER_S;
    }
    func oursSinceNow() -> Ours {
        return self.timeIntervalSinceNow*O_PER_S;
    }
    func oursSince1970() -> Ours {
        return self.timeIntervalSince1970*O_PER_S;
    }
    
}