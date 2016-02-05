//
//  TodayViewController.swift
//  ScheduleWidget
//
//  Created by Dan on 8/22/15.
//  Copyright (c) 2015 Dan. All rights reserved.
//

import UIKit
import NotificationCenter


let date = NSDate()
//let date_as_EST = date.toTimezone("EST")
var weekday = 2//date_as_EST!.weekday
var hours = 3
var endoftheday = 15


class TodayViewController: UIViewController, NCWidgetProviding {
    

    @IBOutlet weak var Today: UILabel!
    @IBOutlet weak var First: UILabel!
    @IBOutlet weak var Second: UILabel!
    @IBOutlet weak var Third: UILabel!
    @IBOutlet weak var Fourth: UILabel!
    @IBOutlet weak var Fifth: UILabel!
    @IBOutlet weak var Sixth: UILabel!
    @IBOutlet weak var TimeOne: UILabel!
    @IBOutlet weak var TimeTwo: UILabel!
    @IBOutlet weak var TimeThree: UILabel!
    @IBOutlet weak var TimeFour: UILabel!
    @IBOutlet weak var TimeFive: UILabel!
    @IBOutlet weak var TimeSix: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateSchedule()
        let time = getCurrentDateAndTime()
        print("wtf")
        print(time.dayoftheweek)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetMarginInsetsForProposedMarginInsets(defaultMarginInsets: UIEdgeInsets) -> UIEdgeInsets {
        return UIEdgeInsetsZero
    }
    
    func widgetPerformUpdateWithCompletionHandler(completionHandler: ((NCUpdateResult) -> Void)) {
        self.updateSchedule()
        // Perform any setup necessary in order to update the view.
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData

        completionHandler(NCUpdateResult.NewData)
    }
    
    func getCurrentDateAndTime() -> (date: String, time: String, dayoftheweek: Int) {
        
        let date = NSDate() //Get current date
        
        //Formatter for time
        let formatter = NSDateFormatter()
        formatter.timeStyle = .ShortStyle //Set style of time
        let timeString = formatter.stringFromDate(date) //Convert to String
        
        
        //Formatter for date
        formatter.dateFormat = "EEEE" //Set style of date
        let dateString = formatter.stringFromDate(date) //Convert to String
        let dayInt = StringToInt(dateString)
        weekday = dayInt
        return (dateString, timeString, dayInt) //Returns a Tuple type
        
    }

    
    func StringToInt(dateInput: String) -> Int {
        var dateInt = 0
        
        if(dateInput == "Sunday"){
            dateInt = 1
        }
        if(dateInput  == "Monday"){
            dateInt = 2
        }
        if(dateInput  == "Tuesday"){
            dateInt = 3
        }
        if(dateInput  == "Wednesday"){
            dateInt = 4
        }
        if(dateInput  == "Thursday"){
            dateInt = 5
        }
        if(dateInput  == "Friday"){
            dateInt = 6
        }
        if(dateInput  == "Saturday"){
            dateInt = 7
        }
        
        return dateInt
    }
    
    func updateSchedule(){
        let defaults =  NSUserDefaults(suiteName: "group.org.suffieldacademy.ScheduleNotifier")
        if(weekday==2 && hours < endoftheday || weekday == 1){
            Today.text = "SCHEDULE FOR MONDAY"
            First.text = defaults!.objectForKey("Period A") as? String
            Second.text = defaults!.objectForKey("Period B") as? String
            Third.text = defaults!.objectForKey("Period E") as? String
            Fourth.text = defaults!.objectForKey("Period C") as? String
            Fifth.text = "CHAPEL"
            Sixth.text = defaults!.objectForKey("Period G") as? String
            TimeOne.text = "8:00 - 8:45"
            TimeTwo.text = "8:50 - 10:00"
            TimeThree.text = "10:05 - 10:50"
            TimeFour.text = "10:55 - 12:05"
            TimeFive.text = "1:00 - 1:50"
            TimeSix.text = "1:55 - 3:05"
            self.preferredContentSize = CGSizeMake(320, 240)
        }
        
        if(weekday==3 && hours < endoftheday || weekday == 2 && hours > endoftheday){
            Today.text = "SCHEDULE FOR TUESDAY"
            First.text = defaults!.objectForKey("Period A") as? String
            Second.text = defaults!.objectForKey("Period B") as? String
            Third.text = defaults!.objectForKey("Period E") as? String
            Fourth.text = defaults!.objectForKey("Period G") as? String
            Fifth.text = defaults!.objectForKey("Period D") as? String
            Sixth.text = defaults!.objectForKey("Period F") as? String
            TimeOne.text = "8:00 - 9:10"
            TimeTwo.text = "9:15 - 10:00"
            TimeThree.text = "10:05 - 11:15"
            TimeFour.text = "11:20 - 12:05"
            TimeFive.text = "1:00 - 1:45"
            TimeSix.text = "1:50 - 2:35"
            self.preferredContentSize = CGSizeMake(320, 240)
        }
        if(weekday==4 && hours < endoftheday || weekday == 3 && hours > endoftheday ){
            Today.text = "SCHEDULE FOR WEDNESDAY"
            First.text = defaults!.objectForKey("Period D") as? String
            Second.text = defaults!.objectForKey("Period C") as? String
            Third.text = defaults!.objectForKey("Period F") as? String
            Fourth.text = "CONFERENCE"
            Fifth.text = ""
            Sixth.text = ""
            TimeOne.text = "8:00 - 9:10"
            TimeTwo.text = "9:15 - 10:00"
            TimeThree.text = "10:05 - 11:15"
            TimeFour.text = "11:20 - 12:05"
            TimeFive.text = ""
            TimeSix.text = ""
            self.preferredContentSize = CGSizeMake(320, 170)
            
        }
        if(weekday==5 && hours < endoftheday || weekday == 4 && hours > endoftheday){
            Today.text = "SCHEDULE FOR THURSDAY"
            First.text = defaults!.objectForKey("Period B") as? String
            Second.text = defaults!.objectForKey("Period A") as? String
            Third.text = defaults!.objectForKey("Period G") as? String
            Fourth.text = defaults!.objectForKey("Period E") as? String
            Fifth.text = defaults!.objectForKey("Period D") as? String
            Sixth.text = "CONFERENCE"
            TimeOne.text = "8:00 - 9:10"
            TimeTwo.text = "9:15 - 10:00"
            TimeThree.text = "10:05 - 11:15"
            TimeFour.text = "11:20 - 12:05"
            TimeFive.text = "1:00 - 2:10"
            TimeSix.text = "2:15 - 3:05"
            self.preferredContentSize = CGSizeMake(320, 240)
        }
        if(weekday==6 && hours < endoftheday || weekday == 4 && hours > endoftheday){
            Today.text = "SCHEDULE FOR FRIDAY"
            First.text = defaults!.objectForKey("Period A") as? String
            Second.text = defaults!.objectForKey("Period B") as? String
            Third.text = defaults!.objectForKey("Period F") as? String
            Fourth.text = defaults!.objectForKey("Period E") as? String
            Fifth.text = defaults!.objectForKey("Period G") as? String
            Sixth.text = defaults!.objectForKey("Period C") as? String
            TimeOne.text = "8:00 - 9:10"
            TimeTwo.text = "9:15 - 10:00"
            TimeThree.text = "10:05 - 10:50"
            TimeFour.text = "10:55 - 12:05"
            TimeFive.text = "1:00 - 1:45"
            TimeSix.text = "1:50 - 2:35"
            self.preferredContentSize = CGSizeMake(320, 240)
        }
        if(weekday==7 && hours < endoftheday || weekday == 6 && hours > endoftheday){
            Today.text = "SCHEDULE FOR SATURDAY"
            First.text = defaults!.objectForKey("Period F") as? String
            Second.text = defaults!.objectForKey("Period D") as? String
            Third.text = defaults!.objectForKey("Period C") as? String
            Fourth.text = ""
            Fifth.text = ""
            Sixth.text = ""
            TimeOne.text = "8:00 - 9:10"
            TimeTwo.text = "9:15 - 10:00"
            TimeThree.text = "10:05 - 11:15"
            TimeFour.text = ""
            TimeFive.text = ""
            TimeSix.text = ""
            self.preferredContentSize = CGSizeMake(320, 170)
        }
    }
}
