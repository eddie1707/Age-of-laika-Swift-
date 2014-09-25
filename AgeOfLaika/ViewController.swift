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
    
    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {
        let stringFromTextField = enterHumanYearsTextField.text
        let optionalDoubleFromTextField = Double((stringFromTextField as NSString).doubleValue)
        var realDogYears:Double
        
        if optionalDoubleFromTextField > 2 {
            realDogYears = (10.5 * 2) + (optionalDoubleFromTextField - 2) * 4
        }
        else {
            realDogYears = optionalDoubleFromTextField * 10.5
        }
        
        dogYearsLabel.text = "\(realDogYears)" + " Real human years"
        enterHumanYearsTextField.resignFirstResponder()
    }
    

}

