//
//  ViewController.swift
//  FirstSteps
//
//  Created by Bart Jacobs on 06/12/15.
//  Copyright © 2015 Envato Tuts+. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel.text = "This is an instance of a UILabel."
    }
    
    @IBAction func changeColor(sender: UIButton) {
        print(sender.classForCoder)
        print(sender.superclass)
        
        let r = CGFloat(arc4random() % 255)
        let g = CGFloat(arc4random() % 255)
        let b = CGFloat(arc4random() % 255)
        
        let color = UIColor(red: (r/255.0), green: (g/255.0), blue: (b/255.0), alpha: 1.0)
        
        view.backgroundColor = color
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

