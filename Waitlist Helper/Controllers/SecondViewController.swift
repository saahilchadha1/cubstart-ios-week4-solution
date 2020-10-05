//
//  SecondViewController.swift
//  Waitlist Helper
//
//  Created by Saahil Chadha on 9/26/20.
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
