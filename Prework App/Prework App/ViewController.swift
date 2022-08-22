//
//  ViewController.swift
//  Prework App
//
//  Created by Salud on 8/21/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var bezelStyleTextField: UITextField!
    @IBOutlet weak var tipA: UILabel!
    @IBOutlet weak var tipPercent: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(bezelStyleTextField.text!) ?? 0
        let tipPercentage = [0.15, 0.18, 0.2]
        let tip = bill *
        tipPercentage[tipPercent.selectedSegmentIndex]
        let total = bill + tip
        tipA.text = String(format: "$%.2f", tip)
        totalLabel.text = String (format: "$%.2f", total)
        
    }
    
}

