//
//  Tiger.swift
//  LionsAndTigers
//
//  Created by Ryan Liu on 2014-12-23.
//  Copyright (c) 2014 Ryan Liu. All rights reserved.
//

import Foundation
import UIKit

struct Tiger {
    var age = 0;
    var name = "";
    var breed = "";
    var image = UIImage(named:"");
    
    func chuff() {
        println("Tiger: Chuff Chuff");
    }
    
    func chufANumberOfTimes (numberOfTime: Int) {
        for var chuff = 0; chuff < numberOfTime; ++chuff {
            self.chuff();
        }
    }
    
    func chuffANumberOfTimes (numberOfTimes: Int, isLoud: Bool) {
        for var chuffTimes = 1; chuffTimes <= numberOfTimes; chuffTimes++ {
            if isLoud {
                chuff();
            } else {
                println("Tiger: purr purr");
            }
        }
    }
    
    func ageInTigerYearsFromAge(regularAge : Int) -> Int {
        let newAge = regularAge * 3;
        return newAge;
    }
    
    func randomFact() -> String {
        let randomNumber = Int(arc4random_uniform(UInt32(3)));
        
        var randomFact:String;
        
        if randomNumber == 0 {
            randomFact = "The Tiger is the biggest species in the cat family";
        } else if randomNumber == 1 {
            randomFact = "Tigers can reach a lenght of 3.3 meters";
        } else {
            randomFact = "a group of tigers is known as an 'ambush' or 'strea'";
        }
        
        return randomFact;
    }
}