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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        run()
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
            self.run()
        }
    }
    
    func run() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss"
        label.text = dateFormatter.string(from: Date())
        
        let calendar = Calendar.current
        let hours = (calendar as NSCalendar).component(.hour, from: Date())
        let minutes = (calendar as NSCalendar).component(.minute, from: Date())
        let seconds = (calendar as NSCalendar).component(.second, from: Date())
        
        let redColor = CGFloat(hours) / 255
        let greenColor = CGFloat(minutes) / 255
        let blueColor = CGFloat(seconds) / 255
        let color = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1)
        view.backgroundColor = color
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
