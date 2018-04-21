//
//  ViewController.swift
//  Count_oni
//
//  Created by 阿部一真 on 2018/04/19.
//  Copyright © 2018年 阿部一真. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
        // Dispose of any resources that can be recreated.
    @IBAction func plus () {
        number += 1
        display()
    }
    @IBAction func minus () {
        number -= 1
        display()
    }
    
    @IBAction func kakeru () {
        number *= 2
        display()
    }
    @IBAction func waru () {
        number /= 2
        display()
    }
    @IBAction func clear () {
        number = 0
        display()
    }
    
    func display() {
        if number >= 10 {
            label.textColor = UIColor.red
        } else if number <= -10 {
            label.textColor = UIColor.blue
        } else {
            label.textColor = UIColor.black
        }
        label.text = String(number)
    }
    
}
