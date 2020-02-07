//
//  ViewController.swift
//  BMICalculatorUpdate
//
//  Created by Andrickson Coste on 2/7/20.
//  Copyright © 2020 Andrickson Coste. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Outlets
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var bmiResult: UILabel!
    @IBOutlet weak var heightSliderOutlet: UISlider!
    @IBOutlet weak var weightSliderOutlet: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        
        let currentValue = String(format: "%.1f", sender.value)
        
        heightLabel.text = currentValue + " m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        
        let currentValue = String(format: "%.0f", sender.value)
        
        weightLabel.text = "\(currentValue) kg"
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        //Get value of both sliders
        let height = heightSliderOutlet.value
        let weight = weightSliderOutlet.value
        
        //Formula to get your BMI
        let bmi = weight / (height * height)
        
        //Round value to 1 decimal place
        let decimal = String(format: "%.1f", bmi)
        
        //BMI result display on label
        bmiResult.text = String(decimal)
        
    }
    
}

