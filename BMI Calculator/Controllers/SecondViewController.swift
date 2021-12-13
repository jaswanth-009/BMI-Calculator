//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Kunjeti Jassvanthh on 08/11/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var bmi : String?
    var advice: String?
    
    @IBOutlet weak var advice_piece: UILabel!
    @IBOutlet weak var bmiValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiValue.text = bmi!
        advice_piece.text = advice!
    
    }
    
    @IBAction func calculateAgain(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
