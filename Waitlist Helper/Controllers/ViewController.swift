//
//  ViewController.swift
//  Waitlist Helper
//
//  Created by Angela Yu on 21/08/2019.
//  Modified by Saahil Chadha on 9/26/20.

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
            destinationVC.probability = probabilityModel.getProbabilityText()
            destinationVC.feedback = probabilityModel.getFeedbackText()
            }
        }
    

}

