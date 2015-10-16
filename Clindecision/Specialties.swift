//
//  Specialties.swift
//  Clindecision
//
//  Created by Saurabh Sikka on 16/10/15.
//  Copyright (c) 2015 Saurabh Sikka. All rights reserved.
//

import Foundation
import UIKit

struct Spec {
    
    let name: String
    let imageName: String
    
    static let NameKey = "NameKey"
    static let ImageNameKey = "ImageNameKey"
    
    init(dictionary: [String : String]) {
        self.name = dictionary[Spec.NameKey]!
        self.imageName = dictionary[Spec.ImageNameKey]!
    }
}

extension Spec {
    
    // Generate an array full of all of the Specs
    static var allSpecs: [Spec] {
        var SpecArray = [Spec]()
        
        for d in Spec.localSpecData() {
            SpecArray.append(Spec(dictionary: d))
        }
        
        return SpecArray
    }
    
    static func localSpecData() -> [[String : String]] {
        return [
            [Spec.NameKey : "General Medicine", Spec.ImageNameKey : "bodyframe"],
            [Spec.NameKey : "Cardiology", Spec.ImageNameKey : "emo"],
            [Spec.NameKey : "Dermatology", Spec.ImageNameKey : "skin"],
            [Spec.NameKey : "Endocrinology", Spec.ImageNameKey : ""],
            [Spec.NameKey : "Gastroenterology", Spec.ImageNameKey : ""],
            [Spec.NameKey : "Hematoncology", Spec.ImageNameKey : ""],
            [Spec.NameKey : "Infectious Diseases", Spec.ImageNameKey : ""],
            [Spec.NameKey : "Nephrology", Spec.ImageNameKey : ""],
            [Spec.NameKey : "Neurology", Spec.ImageNameKey : ""],
            [Spec.NameKey : "Pulmonology", Spec.ImageNameKey : ""],
            [Spec.NameKey : "Rheumatology", Spec.ImageNameKey : ""],
            [Spec.NameKey : "Urology", Spec.ImageNameKey : ""],
            [Spec.NameKey : "Women's Health", Spec.ImageNameKey : ""],
            [Spec.NameKey : "Emergency Medicine", Spec.ImageNameKey : ""],
            [Spec.NameKey : "Behavioral Medicine", Spec.ImageNameKey : ""],
            [Spec.NameKey : "Pharmacology", Spec.ImageNameKey : ""]
        ]
    }

}