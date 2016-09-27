//
//  BradycardiaViewController.swift
//  Clindecision
//
//  Created by Saurabh Sikka on 27/09/16.
//  Copyright (c) 2016 Saurabh Sikka. All rights reserved.
//

import UIKit

class BradycardiaViewController: UIViewController {
    
    
    @IBOutlet weak var introLabel: UILabel!
    @IBOutlet weak var historyDetailLabel: UILabel!
    
    @IBOutlet weak var physioButton: UIButton!
    @IBOutlet weak var pathoButton: UIButton!
    @IBOutlet weak var pharmaButton: UIButton!
    
    @IBOutlet weak var physioDifferentialText: UITextView!
    @IBOutlet weak var physioPossibleLabel: UILabel!
    @IBOutlet weak var physioCauseSwitch: UISwitch!
    
    @IBOutlet weak var drugHistoryLabel: UILabel!
    @IBOutlet weak var ccbLabel: UILabel!
    @IBOutlet weak var ccbSwitch: UISwitch!
    
    @IBOutlet weak var betaBlockerLabel: UILabel!
    @IBOutlet weak var betaBlockerSwitch: UISwitch!
    
    @IBOutlet weak var digitalisLabel: UILabel!
    @IBOutlet weak var digitalisSwitch: UISwitch!
    
    @IBOutlet weak var antiArrhythmicsLabel: UILabel!
    @IBOutlet weak var antiArrhythmicsSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        introLabel.text = "Symptoms of bradyarrhythmias include fatigue, dizziness or syncope, and dyspnea and angina. \nAlteration of either the sinoatrial (SA) or atrioventricular (AV) conduction system may play a role."
        historyDetailLabel.hidden = true
        physioButton.hidden = true
        pathoButton.hidden = true
        pharmaButton.hidden = true
        
        physioDifferentialText.hidden = true
        physioPossibleLabel.hidden = true
        physioCauseSwitch.hidden = true
        
        drugHistoryLabel.hidden = true
        ccbLabel.hidden = true
        betaBlockerLabel.hidden = true
        digitalisLabel.hidden = true
        antiArrhythmicsLabel.hidden = true
        
        ccbSwitch.hidden = true
        betaBlockerSwitch.hidden = true
        digitalisSwitch.hidden = true
        antiArrhythmicsSwitch.hidden = true
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // History
    
    @IBAction func historyButton(sender: UIButton) {
        historyDetailLabel.hidden = false
        historyDetailLabel.text = "After confirming bradycardia on EKG, the following causes may be explored:"
        
        physioButton.hidden = false
        pathoButton.hidden = false
        pharmaButton.hidden = false
        
    }
    
    @IBAction func physioButtonPressed(sender: UIButton) {
        
        if physioDifferentialText.hidden {
            physioCauseSwitch.hidden = false
            physioPossibleLabel.hidden = false
            physioDifferentialText.hidden = false
        } else {
            physioCauseSwitch.hidden = true
            physioPossibleLabel.hidden = true
            physioDifferentialText.hidden = true
        }
    }
    
    @IBAction func pharmaButtonPressed(sender: UIButton) {
        if drugHistoryLabel.hidden {
            drugHistoryLabel.hidden = false
            ccbLabel.hidden = false
            betaBlockerLabel.hidden = false
            antiArrhythmicsLabel.hidden = false
            digitalisLabel.hidden = false
            ccbSwitch.hidden = false
            betaBlockerSwitch.hidden = false
            digitalisSwitch.hidden = false
            antiArrhythmicsSwitch.hidden = false
        } else {
            drugHistoryLabel.hidden = true
            ccbLabel.hidden = true
            betaBlockerLabel.hidden = true
            digitalisLabel.hidden = true
            antiArrhythmicsLabel.hidden = true
            ccbSwitch.hidden = true
            betaBlockerSwitch.hidden = true
            digitalisSwitch.hidden = true
            antiArrhythmicsSwitch.hidden = true
        }
    }
    
    
}