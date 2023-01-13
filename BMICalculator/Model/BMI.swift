//
//  BMI.swift
//  BMICalculator
//
//  Created by İbrahim Bayram on 13.01.2023.
//

import Foundation
import UIKit

class BMI {
    var value : Float?
    var advice : String?
    var color : UIColor?
    
    init(value: Float? = nil, advice: String? = nil, color: UIColor? = nil) {
        self.value = value
        self.advice = advice
        self.color = color
    }
}
