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
    @IBOutlet var label:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func incrementCount() {
        self.count++
        self.label.text = "\(self.count)"
    }
    
    @IBAction func decrementCount() {
        self.count--
        self.label.text = "\(self.count)"
    }

}

