//
//  ViewController.swift
//  MetricTime
//
//  Created by Joseph Colicchio on 8/11/16.
//  Copyright © 2016 novacoast. All rights reserved.
//

import UIKit

let SECS_PER_YEAR = (31556926.0);

class ViewController: UIViewController {
    
    func informDefault(date:NSDate, referenceDate:NSDate) {
        NSLog("%f seconds = %f minutes = %f hours = %f days = %f years",
              date.timeIntervalSinceDate(referenceDate),
              date.timeIntervalSinceDate(referenceDate)/60.0,
              date.timeIntervalSinceDate(referenceDate)/60.0/60.0,
              date.timeIntervalSinceDate(referenceDate)/60.0/60.0/24.0,
              date.timeIntervalSinceDate(referenceDate)/SECS_PER_YEAR);
    }
    
    func informMetric(date:NSDate, referenceDate:NSDate) {
        NSLog("%f seconts = %f minits = %f ours = %f deys = %f yeers",
              date.secontsSinceDate(referenceDate),
              date.minitsSinceDate(referenceDate),
              date.oursSinceDate(referenceDate),
              date.deysSinceDate(referenceDate),
              date.yeersSinceDate(referenceDate));
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let date = NSDate.init(secontsSinceNow: 0);
        
        let minutes = 20.0;
        let minutesLater = date.dateByAddingTimeInterval(minutes*60.0);
        let minitsLater = date.dateByAddingMinits(minutes);
        
        informDefault(minutesLater, referenceDate: date);
        informMetric(minitsLater, referenceDate: date);
        
        let hours = 5.0;
        let hoursLater = date.dateByAddingTimeInterval(hours*60.0*60.0);
        let oursLater = date.dateByAddingOurs(hours);
        
        informDefault(hoursLater, referenceDate: date);
        informMetric(oursLater, referenceDate: date);
        
        let days = 14.0;
        let daysLater = date.dateByAddingTimeInterval(days*60.0*60.0*24.0);
        let deysLater = date.dateByAddingDeys(days);
        informDefault(daysLater, referenceDate: date);
        informMetric(deysLater, referenceDate: date);
        
        let years = 1.0;
        let yearsLater = date.dateByAddingTimeInterval(years*SECS_PER_YEAR);
        let yeersLater = date.dateByAddingYeers(years);
        informDefault(yearsLater, referenceDate: date);
        informMetric(yeersLater, referenceDate: date);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

