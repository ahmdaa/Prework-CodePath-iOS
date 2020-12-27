//
//  SettingsViewController.swift
//  Prework
//
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var defaultTip: UISegmentedControl!
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Select default segment
        defaultTip.selectedSegmentIndex = defaults.integer(forKey: "defaultTip")
    }
    

    @IBAction func updateDefaultTip(_ sender: Any) {
        
        let tip = defaultTip.selectedSegmentIndex
        
        // Set default segment
        defaults.set(tip, forKey: "defaultTip")
    }
}
