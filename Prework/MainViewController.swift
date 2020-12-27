//
//  MainViewController.swift
//  Prework
//
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    
    let defaults = UserDefaults.standard
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        billAmountTextField.becomeFirstResponder()
        
        // Select default segment
        tipControl.selectedSegmentIndex = defaults.integer(forKey: "defaultTip")
    }

    @IBAction func onTap(_ sender: Any) {
        // Show and hide keyboard when user taps outside of text field
        if billAmountTextField.isFirstResponder {
            billAmountTextField.resignFirstResponder()
        } else {
            billAmountTextField.becomeFirstResponder()
        }
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get initial bill amount and calculate the tips
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        // Calculate tip and total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        print(tipControl.selectedSegmentIndex)
        print(tipPercentages[tipControl.selectedSegmentIndex])
        let total = bill + tip
        
        // Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
}

