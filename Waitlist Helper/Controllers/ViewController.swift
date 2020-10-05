//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    var probabilityModel = ProbabilityModel()
    
    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var placeSlider: UISlider!
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var sizeSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func placeChanged(_ sender: Any) {
        placeLabel.text = String(Int(placeSlider.value))
    }
    @IBAction func sizeChanged(_ sender: Any) {
        sizeLabel.text = String(Int(sizeSlider.value))
    }
    @IBAction func calculateButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToResult") {
            let destinationVC = segue.destination as! SecondViewController
            probabilityModel.calculateProbability(waitlistPlace: Int(placeSlider.value), classSize: Int(sizeSlider.value))
            do {
                try destinationVC.probability = probabilityModel.getProbabilityText()
                try destinationVC.feedback = probabilityModel.getFeedbackText()
            } catch {
                print("\(error)")
            }
        }
    }
    

}

