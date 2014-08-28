//
//  timelineViewController.swift


import UIKit
import QuartzCore


extension Int  {
    var day: (Int, NSCalendarUnit) {
    return (self, NSCalendarUnit.CalendarUnitDay)
    }
}

@infix func + (date: NSDate, tuple: (value: Int, unit: NSCalendarUnit)) -> NSDate {
    return NSCalendar.currentCalendar().dateByAddingUnit(tuple.unit, value: tuple.value, toDate: date, options: NSCalendarOptions.SearchBackwards)
}

@infix func - (date: NSDate, tuple: (value: Int, unit: NSCalendarUnit)) -> NSDate {
    return NSCalendar.currentCalendar().dateByAddingUnit(tuple.unit, value: (-tuple.value), toDate: date, options: NSCalendarOptions.SearchBackwards)
}

@assignment func += (inout date: NSDate, tuple: (value: Int, unit: NSCalendarUnit)) {
    date = NSCalendar.currentCalendar().dateByAddingUnit(tuple.unit, value: tuple.value, toDate: date, options: NSCalendarOptions.SearchBackwards)
}

@assignment func -= (inout date: NSDate, tuple: (value: Int, unit: NSCalendarUnit)) {
    date = NSCalendar.currentCalendar().dateByAddingUnit(tuple.unit, value: -tuple.value, toDate: date, options: NSCalendarOptions.SearchBackwards)
}


class timelineViewController: UIViewController, calDelegate {
    
    @IBOutlet var dayBtn: UIButton!
    @IBOutlet var doneBtn: UIButton!
    var daDate :NSDate!

    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController.navigationBarHidden = true
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.bringSubviewToFront(doneBtn)
        
        // day button
        let dateFormatter = NSDateFormatter()
        //dateFormatter.dateFormat = "EEEE, MMM d "
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let str = dateFormatter.stringFromDate(NSDate())
        dayBtn.setTitle(str, forState: UIControlState.Normal)
        dayBtn.setTitle(str, forState: UIControlState.Highlighted)
        
        // set daDate
        daDate = NSDate() // not needed
    }
    
    
    @IBAction func showCalendar(sender: AnyObject) {

        // setup view controller
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc : calendarViewController = storyboard.instantiateViewControllerWithIdentifier("calendarViewController") as calendarViewController
        vc.delegate = self
        self.presentViewController(vc, animated: true, completion: nil)
        
    }
    
    func didPressDate(val: NSString) {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        let d :NSDate = formatter.dateFromString(val)
        self.dayBtn.setTitle(val, forState: UIControlState.Normal)
        self.daDate = d
    }
    
    
}

