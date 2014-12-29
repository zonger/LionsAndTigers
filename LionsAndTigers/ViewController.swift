//
//  ViewController.swift
//  LionsAndTigers
//
//  Created by Ryan Liu on 2014-12-23.
//  Copyright (c) 2014 Ryan Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    @IBOutlet weak var randomFactLabel: UILabel!

    var myTigers:[Tiger] = [];
    var currentIndex = 0;

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myTiger = Tiger();
        myTiger.name = "Tigger";
        myTiger.breed = "Bengal";
        myTiger.age = 3;
        myTiger.image = UIImage(named: "BengalTiger.jpg");
        
        myTiger.age = myTiger.ageInTigerYearsFromAge(myTiger.age);
        myTiger.chuffANumberOfTimes(5, isLoud: true);
        
        self.myImageView.image = myTiger.image;
        self.nameLabel.text = myTiger.name;
        self.ageLabel.text = "\(myTiger.age)";
        self.breedLabel.text = myTiger.breed;
        self.randomFactLabel.text = myTiger.randomFact();
        
        var secondTiger = Tiger();
        secondTiger.name = "Tigress";
        secondTiger.breed = "Indochinese Tiger";
        secondTiger.age = 2;
        secondTiger.image = UIImage(named: "IndochineseTiger.jpg");
        
        var thirdTiger = Tiger();
        thirdTiger.name = "Jacob";
        thirdTiger.breed = "Malayan Tiger";
        thirdTiger.age = 4;
        thirdTiger.image = UIImage(named: "MalayanTiger.jpg");
        
        var fourthTiger = Tiger();
        fourthTiger.name = "Spar";
        fourthTiger.breed = "Siberian Tiger";
        fourthTiger.age = 5;
        fourthTiger.image = UIImage(named: "SiberianTiger.jpg");
        
        myTigers += [myTiger, secondTiger, thirdTiger, fourthTiger];
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
        
        var randomIndex:Int;
        
        do {
            randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)));
        } while currentIndex == randomIndex
        
        currentIndex = randomIndex;
        
        let tiger = myTigers[randomIndex];
        
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            self.myImageView.image = tiger.image;
            self.nameLabel.text = tiger.name;
            self.ageLabel.text = "\(tiger.age)";
            self.breedLabel.text = tiger.breed;
            self.randomFactLabel.text = tiger.randomFact();
            }, completion: {
                (finished: Bool) -> () in
        })
    }
}

