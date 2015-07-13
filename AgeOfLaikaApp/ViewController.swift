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
    
    // This IBAction lets user enter a number (age) into the top text field and convert it into dog years
    
    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        let humanAgeFromTextField = ageTextField.text.toInt()!
        let conversionConstant = 7
        dogYearsLabel.text = "\(humanAgeFromTextField * conversionConstant)" + " in dog years"
        
        dogYearsLabel.hidden = false
        ageTextField.resignFirstResponder()
        ageTextField.text = ""
        
    }
    
    // This button lets user enter a number (age) into the top text field and convert it more precisely into dog years
    
    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {
        let stringFromTextField = ageTextField.text
        let doubleFromTextField = Double((stringFromTextField as NSString).doubleValue)
        
        var realDogYears:Double
        
        if doubleFromTextField > 2 {
            realDogYears = 10.5 * 2 + (doubleFromTextField - 2) * 4
        }
        else {
            realDogYears = doubleFromTextField * 10.5
        }
        dogYearsLabel.text = "\(realDogYears)" + " in real dog years"
        dogYearsLabel.hidden = false
        ageTextField.resignFirstResponder()
    }

}

