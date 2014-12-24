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


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myTiger = Tiger();
        myTiger.name = "Tigger";
        myTiger.breed = "Bengal";
        myTiger.age = 3;
        myTiger.image = UIImage(named: "BengalTiger.jpg");
        
        myImageView.image = myTiger.image;
        nameLabel.text = myTiger.name;
        ageLabel.text = "\(myTiger.age)";
        breedLabel.text = myTiger.breed;
        
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
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
    }
}

