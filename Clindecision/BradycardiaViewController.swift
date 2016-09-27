//
//  BradycardiaViewController.swift
//  Clindecision
//
//  Created by Saurabh Sikka on 27/09/16.
//  Copyright (c) 2016 Saurabh Sikka. All rights reserved.
//

import UIKit

class BradycardiaViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    let hAndPText = "Bradycardia can be physiologic, pathologic, or pharmacologic in origin. Alteration of either the sinoatrial (SA) or atrioventricular (AV) conduction system may play a role. Symptoms of bradyarrhythmias include fatigue, dizziness or syncope, and dyspnea and angina."
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
//    struct Popsicle {
//        var hAndPSegueIdent = "Show History Physical"
//    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            switch identifier {
            case "Show History Physical":
                if let tvc = segue.destinationViewController as? TextViewController {
                    if let ppc = tvc.popoverPresentationController {
                        ppc.delegate = self
                    }
                    tvc.text = "\(hAndPText)"
                }
            default: break
            }
        }
    }
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.None
    }

}
