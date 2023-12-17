//
//  BMI.swift
//  BMI Calculator
//
//  Created by Gustavo Leite Silvano on 10/12/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct BMI {
    let value: Float
    let advice: String
    let color: UIColor
    
    func getValueFormatted() -> String {
        return String(format: "%.1f", value)
    }
}
