////
////  CalculatorBrain.swift
////  Tipsy
////
////  Created by Сергей Сухарев on 24.07.2024.
////  Copyright © 2024 The App Brewery. All rights reserved.
////
//
//import UIKit
//
//struct CalculatorBrain {
//    
//    let calculatorVC = CalculatorViewController()
//    
//    var tip: Float = 0.1
//    
//    mutating func tipValue(tip: String) -> Float {
//        if var tips == calculatorVC.zeroPctButton.value{
//            tip = 0.0
//            calculatorVC.zeroPctButton.isSelected = true
//            calculatorVC.tenPctButton.isSelected = false
//            calculatorVC.twentyPctButton.isSelected = false
//            return tip
//            
//        } else if var tip == calculatorVC.tenPctButton.value {
//            tip = 0.1
//            calculatorVC.tenPctButton.isSelected = true
//            calculatorVC.zeroPctButton.isSelected = false
//            calculatorVC.twentyPctButton.isSelected = false
//            return tip
//        }else{
//            tip = 0.2
//            calculatorVC.twentyPctButton.isSelected = true
//            calculatorVC.zeroPctButton.isSelected = false
//            calculatorVC.tenPctButton.isSelected = false
//            return tip
//        }
//    }
//}
