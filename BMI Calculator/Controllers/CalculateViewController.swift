//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var lbHeightValue: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var lbWeightValue: UILabel!
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        lbHeightValue.text = "\(height)m"
        
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        lbWeightValue.text = "\(Int(sender.value))Kg"
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculateBMI(height, weight)
        
        let resultVC = self.storyboard?.instantiateViewController(withIdentifier: "BMI_Result") as! ResultViewController
        
        resultVC.BMIResult = calculatorBrain.getBMIValue()
        resultVC.BMIadvice = calculatorBrain.getAdvice()
        resultVC.BMIColor = calculatorBrain.getColor()
        
        self.present(resultVC, animated: true)
    }
    
    
}

