//
//  BMIRepository.swift
//  BMI Calculator
//
//  Created by protector on 1/3/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct BMIRepository {
    var bmi : BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat More pies!", color: UIColor.blue.withAlphaComponent(0.9))
        } else if  bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green.withAlphaComponent(0.9))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor.red.withAlphaComponent(0.9))
        }
        
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}

