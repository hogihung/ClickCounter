//
//  ViewController.swift
//  ClickCounter
//
//  Created by John F. Hogarty on 3/24/15.
//  Copyright (c) 2015 John F. Hogarty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup for our label
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        
        self.view.addSubview(label)
        self.label = label
        
        // Setup for our increment button
        var incrementButton = UIButton()
        incrementButton.frame = CGRectMake(80, 250, 80, 180)
        incrementButton.setTitle("+", forState: .Normal)
        incrementButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(incrementButton)
        
        incrementButton.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        // Setup for our decrement button
        var decrementButton = UIButton()
        decrementButton.frame = CGRectMake(240, 250, 80, 180)
        decrementButton.setTitle("-", forState: .Normal)
        decrementButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(decrementButton)
        
        decrementButton.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func incrementCount() {
        self.count++
        self.label.text = "\(self.count)"
    }
    
    func decrementCount() {
        self.count--
        self.label.text = "\(self.count)"
    }

}

