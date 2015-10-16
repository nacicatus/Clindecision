//
//  ViewController.swift
//  Clindecision
//
//  Created by Saurabh Sikka on 16/10/15.
//  Copyright (c) 2015 Saurabh Sikka. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    // This is an array of Spec instances
    let allSpecs = Spec.allSpecs
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.allSpecs.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SpecCell")! as! UITableViewCell
        let Spec = self.allSpecs[indexPath.row]
        
        // Set the name and image
        cell.textLabel?.text = Spec.name
        cell.imageView?.image = UIImage(named: Spec.imageName)
        
        return cell
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let detailController = self.storyboard!.instantiateViewControllerWithIdentifier("SpecDetailViewController") as! SpecDetailViewController
        detailController.spec = self.allSpecs[indexPath.row]
        self.navigationController!.pushViewController(detailController, animated: true)
    }
}
