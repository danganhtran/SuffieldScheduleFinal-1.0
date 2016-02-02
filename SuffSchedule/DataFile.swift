//
//  DataFile.swift
//  SuffSchedule
//
//  Created by Dan on 8/22/15.
//  Copyright (c) 2015 Dan. All rights reserved.
//

import UIKit

class DataFile {
    
    
    class var sharedInstance: DataFile {
        struct Static {
            static var instance: DataFile?
            static var token: dispatch_once_t = 0
        }
        
        dispatch_once(&Static.token) {
            Static.instance = DataFile()
        }
        
        return Static.instance!
    }
}

extension NSDate {

    func dateAt(hours hours: Int, minutes: Int) -> NSDate {
        let calendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
        //get the month/day/year componentsfor today's date.
        
        let date_components = calendar.components(
            [NSCalendarUnit.Year, NSCalendarUnit.Month, NSCalendarUnit.Day],
            fromDate: self)
        
        //Create an NSDate for 8:00 AM today.
        date_components.hour = hours
        date_components.minute = minutes
        date_components.second = 0
        
        let newDate = calendar.dateFromComponents(date_components)!
        return newDate
        
        
    }
}
//-------------------------------------------------------------
//Tell the system that NSDates can be compared with ==, >, >=, <, and <= operators
//extension NSDate: Comparable {}

//-------------------------------------------------------------
//Define the global operators for the
//Equatable and Comparable protocols for comparing NSDates

/* public func ==(lhs: NSDate, rhs: NSDate) -> Bool
{
    return lhs.timeIntervalSince1970 == rhs.timeIntervalSince1970
}

public func <(lhs: NSDate, rhs: NSDate) -> Bool
{
    return lhs.timeIntervalSince1970 < rhs.timeIntervalSince1970
}
public func >(lhs: NSDate, rhs: NSDate) -> Bool
{
    return lhs.timeIntervalSince1970 > rhs.timeIntervalSince1970
}
public func <=(lhs: NSDate, rhs: NSDate) -> Bool
{
    return lhs.timeIntervalSince1970 <= rhs.timeIntervalSince1970
}
public func >=(lhs: NSDate, rhs: NSDate) -> Bool
{
    return lhs.timeIntervalSince1970 >= rhs.timeIntervalSince1970
}
*/
//-------------------------------------------------------------
let date = NSDate()
//let date_as_EST = date.toTimezone("EST")
//let today = date.weekday
//let hours = date.hour


let now = NSDate()
let calendar = NSCalendar.currentCalendar()
let weekday = calendar.components(.Weekday, fromDate: now).weekday






