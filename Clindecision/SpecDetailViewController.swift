//
//  SpecDetailViewController.swift
//  Clindecision
//
//  Created by Saurabh Sikka on 17/10/15.
//  Copyright (c) 2015 Saurabh Sikka. All rights reserved.
//

import UIKit
class SpecDetailViewController : UIViewController {
   // @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var spec: Spec!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.label.text = self.spec.name
    //    self.imageView!.image = UIImage(named: spec.imageName)
    }
    
    //    override func viewDidAppear(animated: Bool) {
    //
    //    }
    
    
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
}

