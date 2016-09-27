//
//  SymptomTableViewController.swift
//  Clindecision
//
//  Created by Saurabh Sikka on 27/09/16.
//  Copyright (c) 2016 Saurabh Sikka. All rights reserved.
//

import UIKit

class SymptomTableViewController: UITableViewController {
    
    // Properties
    
    struct Hospital {
        var departmentName: String!
        var symptomata: [String: String]!
    }
    
    var hospitalArray = [Hospital]()
    var symptoms = [String]()
    var identities = [String]()
    
    func populateArrays() {
        hospitalArray = [Hospital(departmentName: "Cardiology", symptomata: ["Bradycardia": "brady", "Narrow Complex Tachycardia" : "nct", "Wide Complex Tachycardia" : "wct"]), Hospital(departmentName: "Endocrinology", symptomata: ["Hypoglycemia" : "hypogly", "Hyperglycemia" : "hypergly", "Hypocalcemia" : "hypocal", "Hypercalcemia" : "hypercal"])]
        
        
      //  for index in 0..<hospitalArray.count  {
            for item in hospitalArray {
                for (key, value) in item.symptomata {
                    symptoms[key.hashValue] = key
                    identities[value.hashValue] = value
                }
            }
        //}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateArrays()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table view data source
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return hospitalArray.count
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hospitalArray[section].symptomata.count
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return hospitalArray[section].departmentName
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SymptomCell", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.text = symptoms[indexPath.row]
        return cell
    }
    
    
    
    override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
    
            let destinationName = identities[indexPath.row]
        print(destinationName)
            let destinationVC: AnyObject = storyboard?.instantiateViewControllerWithIdentifier(destinationName) as! UIViewController
            self.navigationController?.pushViewController(destinationVC as! UIViewController, animated: true)
        
    
        
    }
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
    }
    */
    
    
}
