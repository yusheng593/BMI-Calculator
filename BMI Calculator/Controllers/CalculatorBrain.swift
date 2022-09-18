//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by yusheng Lu on 2022/9/18.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    private var bmi: BMI?
    
    mutating func calculateBMI(_ height: Float, _ weight: Float) {
        let value = weight / pow(height, 2)
        
        if value >= 24.9 {
            bmi = BMI(value: value, advice: "太胖了", color: .red)
        } else if value <= 18.5 {
            bmi = BMI(value: value, advice: "太瘦了", color: .green)
        } else {
            bmi = BMI(value: value, advice: "嘟嘟好", color: .blue)
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "沒有建議"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .gray
    }
    
}
