//
//  Lion.swift
//  LionsAndTigers
//
//  Created by Ryan Liu on 2014-12-29.
//  Copyright (c) 2014 Ryan Liu. All rights reserved.
//

import Foundation
import UIKit

class Lion {
    var age = 0;
    var isAlphaMale = false;
    var image = UIImage(named: "");
    var name = "";
    var subspecies = "";
    
    func roar() {
        println("Lion: Roar Roar");
    }
    
    func changeToAlphaMale() {
        self.isAlphaMale = true;
    }
    
    func randomFact() -> String {
        var randomFact:String
        
        if self.isAlphaMale {
            randomFact = "Male lions are easy to recognize thanks to their distinctive manes. Males with darker manes are more likely to attract females";
        } else {
            randomFact = "Female Lionesses form the stable social unit and do not tolerate outside females";
        }
        
        return randomFact;
    }
}