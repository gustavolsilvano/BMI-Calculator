//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

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
        let bmi = weightSlider.value / pow(heightSlider.value, 2)
        
        let resulVC = ResultsViewController()
        resulVC.bmiValue = String(format: "%.1f", bmi)
        self.present(resulVC, animated: true, completion: nil)
    }
}

