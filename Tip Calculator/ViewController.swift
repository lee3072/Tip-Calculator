//
//  ViewController.swift
//  Tip Calculator
//
//  Created by 이승헌 on 30/11/2018.
//  Copyright © 2018 이승헌. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BillAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipPercentageSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    let tipPercents = [0.15,0.18,0.2]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func onBillChanged(_ sender: Any) {
        if let billAmountString = BillAmountTextField.text,
            let billAmount = Double(billAmountString)            {
                let selectedIndex = self.tipPercentageSegmentedControl.selectedSegmentIndex
                let tipPercent = tipPercents[selectedIndex]
                let tipAmount = billAmount * tipPercent
                self.tipAmountLabel.text = "\(tipAmount)"
                let totalAmount = tipAmount + billAmount
                self.totalAmountLabel.text = "\(totalAmount)"
                }
        
    }
}

