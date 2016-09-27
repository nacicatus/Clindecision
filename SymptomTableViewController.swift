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
        var symptoms: [String]!
    }
    
    var hospitalArray = [Hospital]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hospitalArray = [Hospital(departmentName: "Cardiology", symptoms: ["Bradycardia", "Narrow Complex Tachycardia", "Wide Complex Tachycardia"]), Hospital(departmentName: "Endocrinology", symptoms: ["Hypoglycemia", "Hyperglycemia", "Hypocalcemia", "Hypercalcemia"])]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table view data source
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return hospitalArray.count
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hospitalArray[section].symptoms.count
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return hospitalArray[section].departmentName
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SymptomCell", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.text = hospitalArray[indexPath.section].symptoms[indexPath.row]
        return cell
    }
    
    
    
    override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    }
    */
    
}
