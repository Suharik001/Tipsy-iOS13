//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Сергей Сухарев on 23.07.2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var calculatorViewController = CalculatorViewController()
    var resVal: String?
    var tip: Float?
    var stepp: String?
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = resVal
        settingsLabel.text = "Split between \(stepp!) people, with \(String(format: "%.0f", tip! * 100))% tip."

    }

    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
