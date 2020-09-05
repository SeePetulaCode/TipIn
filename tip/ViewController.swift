//
//  ViewController.swift
//  tip
//
//  Created by Petula Pascall on 9/4/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        
       //Toggle Keyboard Number
        view.endEditing(true)
    
    }
    @IBAction func calculateTip(_ sender: Any) {
        
        //Get the bill amt
        let bill = Double(billField.text!) ?? 0
        
        
        //Calculate tip and total
        let tipPercentages = [0.15,0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        
        //Update tip and total
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

