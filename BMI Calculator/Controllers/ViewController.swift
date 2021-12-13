//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    var calculateBrain = Calculator()
    
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    
    @IBOutlet weak var weight: UISlider!
    @IBOutlet weak var height: UISlider!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        weight.value = 100
        height.value = 1.5
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        let h = round(sender.value * 100) / 100.0
        heightLbl.text = String(h)+"m"
    }
    
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let w = round(sender.value * 100) / 100.0
        weightLbl.text = String(w)+"Kg"
    }
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        calculateBrain.calculateBMI(height.value, weight.value)
        
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! SecondViewController
        secondVC.bmi = calculateBrain.getBMI()
        secondVC.advice = calculateBrain.getAdvice()
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
}

