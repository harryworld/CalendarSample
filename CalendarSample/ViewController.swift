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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addChildViewController(calendarView)
        calendarView.view.frame = view.frame
        view.addSubview(calendarView.view)
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

