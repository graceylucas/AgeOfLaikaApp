//
//  ViewController.swift
//  AgeOfLaikaApp
//
//  Created by Mary Grace Lucas on 7/12/15.
//  Copyright (c) 2015 Mary Grace Lucas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var dogYearsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // This IBAction lets users enter any number (age) into the top text field and convert it into dog years
    
    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        let humanAgeFromTextField = ageTextField.text.toInt()!
        let conversionConstant = 7
        dogYearsLabel.text = "\(humanAgeFromTextField * conversionConstant)" + " in dog years"
        
        dogYearsLabel.hidden = false
        ageTextField.resignFirstResponder()
        ageTextField.text = ""
        
    }
    
    

}

