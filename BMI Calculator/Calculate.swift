//
//  Calculate.swift
//  BMI Calculator
//
//  Created by Kunjeti Jassvanthh on 08/12/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

struct Calculator {
    
    var bmi: BMI?
    
   mutating func calculateBMI(_ height: Float, _ weight: Float) {
       let bmiValue = Float(weight)/Float(pow(height,2))
       var advice : String = ""
       if bmiValue < 18.5 {
           advice = "Underweight! Eat some calories.."
       }
       else if bmiValue < 24.9 {
           advice = "Healthy....maintain the same fitness"
       }
       else {
           advice = "OverWeight....Burn some calories"
       }
       bmi = BMI(value: bmiValue, advice: advice)
    }
    
    func getBMI() -> String {
        if let BMI = bmi {
            return String(round(BMI.value * 100.0) / 100.0)
        }
        return "0.0"
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
}
