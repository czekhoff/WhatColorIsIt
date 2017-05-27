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
        let calendar = Calendar.current
        let hours = (calendar as NSCalendar).component(.hour, from: Date())
        let minutes = (calendar as NSCalendar).component(.minute, from: Date())
        let seconds = (calendar as NSCalendar).component(.second, from: Date())
        
        let redColor = CGFloat(hours) / 255
        let greenColor = CGFloat(minutes) / 255
        let blueColor = CGFloat(seconds) / 255
        let color = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1)
        
        label.textColor = UIColor.white
        label.text = "\(hours):\(minutes):\(seconds)"
    
        view.backgroundColor = color
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.run), userInfo: nil, repeats: true)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
