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
    
    struct Department {
        var departmentName: String!
        var symptomata: [String]!
        var identities: [String]!
    }
    
    var departmentArray = [Department]()
    
    
    func populateArrays() {
        departmentArray = [Department(departmentName: "Cardiology", symptomata: ["Bradycardia", "Narrow Complex Tachycardia", "Wide Complex Tachycardia"], identities: ["brady", "nct", "wct"]), Department(departmentName: "Endocrinology", symptomata: ["Hypoglycemia", "Hyperglycemia", "Hypocalcemia", "Hypercalcemia"], identities: ["hypogly", "hypergly", "hypocal", "hypercal"])]
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
        return departmentArray.count
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return departmentArray[section].symptomata.count
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return departmentArray[section].departmentName
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SymptomCell", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.text = departmentArray[indexPath.section].symptomata[indexPath.row]
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let destinationName = departmentArray[indexPath.section].identities[indexPath.row]
//        print(destinationName)
        let destinationVC: AnyObject = storyboard?.instantiateViewControllerWithIdentifier(destinationName) as! UIViewController
        self.navigationController?.pushViewController(destinationVC as! UIViewController, animated: true)

    }

    
}
