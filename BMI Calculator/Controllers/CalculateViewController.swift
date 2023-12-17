//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func slideHeight(_ sender: UISlider) {
        height.text = String(format: "%.2fm", sender.value)
    }
    
    @IBAction func slideWeight(_ sender: UISlider) {
        weight.text = "\(String(Int(sender.value)))Kg"
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        calculatorBrain.calculateBMI(weight: weightSlider.value, height: heightSlider.value)
        self.performSegue(withIdentifier: "goToResults", sender: self)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmi = calculatorBrain.getBMI()
        }
    }
}

