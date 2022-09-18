//
//  BMIController.swift
//  BMI Calculator
//
//  Created by yusheng Lu on 2022/9/17.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var lbBMIResult: UILabel!
    @IBOutlet weak var lbAdvice: UILabel!
    
    var calculatorBrain = CalculatorBrain()
    
    var BMIResult: String?
    var BMIadvice: String?
    var BMIColor: UIColor = .gray
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbBMIResult.text = BMIResult
        lbAdvice.text = BMIadvice
        self.view.backgroundColor = BMIColor
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
