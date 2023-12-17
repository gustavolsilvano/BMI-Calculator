//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Gustavo Leite Silvano on 08/12/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var bmi: BMI?
    
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var background: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmi?.getValueFormatted() ?? "0.0"
        background.backgroundColor = bmi?.color
        adviceLabel.text = bmi?.advice ?? "No Advice"
        
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
