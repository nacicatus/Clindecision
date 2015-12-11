//
//  PreventiveDetailViewController.swift
//  Clindecision
//
//  Created by Saurabh Sikka on 22/10/15.
//  Copyright (c) 2015 Saurabh Sikka. All rights reserved.
//

import UIKit

class PreventiveDetailViewController: UIViewController {

    var age : Int!
    var adviceText : String!
    var gender : String!
    var item: String!
    
    @IBOutlet weak var itemLabel: UILabel!
    @IBOutlet weak var genderSwitch: UISegmentedControl!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var adviceButton: UIButton!
    
    @IBOutlet var box: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.itemLabel.text = self.item
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func dismissKeyboard(sender: UITextField) {
        ageTextField.resignFirstResponder()
    }
    
    @IBAction func adviceButtonPressed(sender: UIButton) {
        
        age = Int(self.ageTextField.text)
        
        var bpAd = "Blood Pressure measurement every medical visit and at least once every 2 years."
        var cervixAd = "Cervical Cytology screening every 2 years."
        var vaxxer = "Annual influenza and pneumococcal vaccination."
        
        if (genderSwitch.selectedSegmentIndex == 0) {
            self.gender = "male"
            if (age > 35 && age < 65) {
                var cholAdvice = "Serum Cholesterol measurement every 5 years."
                var finalAdvice = "\(bpAd)+\n+\(cholAdvice)"
                self.box.text = finalAdvice
            } else if (age > 65) {
                var cholAdvice = "Serum Cholesterol measurement every 5 years."
                var finalAdvice = "\(bpAd)+\n+\(cholAdvice)+\n+\(vaxxer)"
                self.box.text = finalAdvice
                
            } else {
                var finalAdvice = bpAd;
                self.box.text = finalAdvice
            }
        }
        else if (genderSwitch.selectedSegmentIndex == 1) {
            self.gender = "female"
            if (age >= 40 && age < 50) {
                var breastAd = "Annual Breast Exam"
                var cholAdvice = "Serum Cholesterol measurement every 5 years."
                var finalAdvice = "\(bpAd)+\n+\(breastAd)+\n+\(cholAdvice)+\n+\(cervixAd)"
                self.box.text = finalAdvice
            }
            else if (age > 50 && age < 65) {
                var breastAd = "Annual Mammography"
                var cholAdvice = "Serum Cholesterol measurement every 5 years."
                var finalAdvice = "\(bpAd)+\n+\(breastAd)+\n+\(cholAdvice)+\n+\(cervixAd)"
                self.box.text = finalAdvice
            } else if (age >= 65) {
                var breastAd = "Annual Mammography"
                var cholAdvice = "Serum Cholesterol measurement every 5 years."
                var finalAdvice = "\(bpAd)+\n+\(breastAd)+\n+\(cholAdvice)+\n+\(cervixAd)+\n+\(vaxxer)"
                self.box.text = finalAdvice;
            }
        }
        
        
    }
    
    
    
    
}
