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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        
        let currentValue = String(format: "%.1f", sender.value)
        
        heightLabel.text = currentValue
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let currentValue = String(format: "%.0f", sender.value)
        
        weightLabel.text = currentValue
    }
    
}

