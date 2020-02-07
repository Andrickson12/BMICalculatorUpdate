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
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        
        let currentValue = String(format: "%.1f", sender.value)
        
        heightLabel.text = currentValue + " m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        
        let currentvValue = String(format: "%.0f", sender.value)
        
        weightLabel.text = currentvValue
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        CalculateBMI()
    }
    
    
    func CalculateBMI(){
        let height = heightSliderOutlet.value
        let weight = weightSliderOutlet.value
        
        let bmi = weight / (height * height)
        
        bmiResult.text = String(bmi)
        
        print(bmi)
    }
    
}

