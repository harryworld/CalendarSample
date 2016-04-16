//
//  ViewController.swift
//  CalendarSample
//
//  Created by Harry Ng on 5/4/2016.
//  Copyright © 2016 STAY REAL LIMITED. All rights reserved.
//

import Cocoa
import HNCalendarView

class ViewController: NSViewController {
    
    let calendarView = HNCalendarView()

    @IBOutlet weak var containerView: NSView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addChildViewController(calendarView)
        calendarView.view.frame = containerView.frame
        view.addSubview(calendarView.view)
        
        calendarView.counts = generateCounts()
        calendarView.selectedDate = NSDate()
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    func generateCounts() -> [Int] {
        
        var counts = [Int]()
        for i in 0..<NSDate().monthDays {
            counts.append(i % 2)
        }
        
        return counts
    }

}

