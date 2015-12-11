//
//  GeneralMedicineTableViewController.swift
//  Clindecision
//
//  Created by Saurabh Sikka on 21/10/15.
//  Copyright (c) 2015 Saurabh Sikka. All rights reserved.
//

import UIKit

class GeneralMedicineTableViewController: UITableViewController {

    var medicalConditions = ["Preventive Health", "Fatigue", "Eating Disorders", "Involuntary Weight Loss", "Obesity", "Sexual Dysfunction", "Edema", "Chronic Pain", "Persistent Excessive Sweating", "Red Eye", "Rhinitis", "Tinnitus", "Hearing Loss", "Perioperative Evaluation"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return medicalConditions.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MedicalConditionCell", forIndexPath: indexPath) 

        // Configure the cell...
        cell.textLabel?.text = medicalConditions[indexPath.row]
        
        return cell
    }

    
    // MARK: - Navigation
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath, segue: UIStoryboardSegue) {
        for x in medicalConditions {
            segue.identifier == medicalConditions[indexPath.row]
        }
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            switch identifier {
                case "Preventive Health":
                    let cell = sender as! UITableViewCell
                    if let indexPath = tableView.indexPathForCell(cell) {
                        let destinationVC = segue.destinationViewController 
                        destinationVC.performSegueWithIdentifier("Preventive Health", sender: self)
                    }
                break
                default:
                break
            }
    
        }
    }
    
}
