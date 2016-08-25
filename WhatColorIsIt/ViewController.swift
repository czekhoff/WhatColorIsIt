//
//  ViewController.swift
//  WhatColorIsIt
//
//  Created by Slava Nehria on 20.08.16.
//  Copyright © 2016 Slava Nehria. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    func run() {
        let calendar = NSCalendar.currentCalendar()
        let hours = calendar.component(.Hour, fromDate: NSDate())
        let minutes = calendar.component(.Minute, fromDate: NSDate())
        let seconds = calendar.component(.Second, fromDate: NSDate())
        
        let redColor = CGFloat(hours) / 255
        let greenColor = CGFloat(minutes) / 255
        let blueColor = CGFloat(seconds) / 255
        let color = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1)
        
        label.textColor = UIColor.whiteColor()
        label.text = "\(hours):\(minutes):\(seconds)"
    
        view.backgroundColor = color
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.run), userInfo: nil, repeats: true)
        
    }

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
}

