//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    //var resultsViewController = ResultsViewController()
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tip: Float = 0.1
    var stepperValue:Int = 2
    var tipsy: Float = 0.0
    var sum:Float = 0.0

    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        if sender == zeroPctButton{
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
            return tip = 0.0
        } else if sender == tenPctButton {
            tenPctButton.isSelected = true
            zeroPctButton.isSelected = false
            twentyPctButton.isSelected = false
            return  tip = 0.1
        }else{
            twentyPctButton.isSelected = true
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            return tip = 0.2
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        stepperValue = Int(sender.value)
        splitNumberLabel.text = stepperVal()
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        //resultSum()
        //resultsViewController.totalLabel.text = String(format: "%.2f", sum)
        //resultsViewController.settingsLabel.text= ("\(stepperValue)")
        performSegue(withIdentifier: "goToResults", sender: self)
    }
    func stepperVal() -> String {
        
        return String(stepperValue)
    }
    func resultSum () -> String {
        tipsy = (Float(billTextField.text!) ?? 0) * tip
        
        sum = ((Float(billTextField.text!) ?? 0) + tipsy) / Float(stepperValue)
        
        return String(format: "%.2f", sum)
    }
//
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.resVal = resultSum()
            destinationVC.tip = tip
            destinationVC.stepp = stepperVal()
            
        }
    }

}

