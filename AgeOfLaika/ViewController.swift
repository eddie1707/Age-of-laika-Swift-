//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Edwin Wiersma on 23/09/14.
//  Copyright (c) 2014 Apps4Mobile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var enterHumanYearsTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        let stringFromTextField = enterHumanYearsTextField.text
        let optionalIntFromTextField = stringFromTextField.toInt()
        let intFromOptimal = optionalIntFromTextField!
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "\(intFromOptimal * 7)" + " Human years"
        enterHumanYearsTextField.resignFirstResponder()
    }
    

}

