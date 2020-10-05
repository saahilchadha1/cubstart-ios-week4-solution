//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Saahil Chadha on 10/5/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var probability: String?
    var feedback: String?
    @IBOutlet weak var probabilityLabel: UILabel!
    @IBOutlet weak var feedbackLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        probabilityLabel.text = probability
        feedbackLabel.text = feedback
    }

}
