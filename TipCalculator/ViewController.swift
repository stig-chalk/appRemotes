//
//  ViewController.swift
//  TipCalculator
//
//  Created by Yuhui Chen on 2019/3/30.
//  Copyright © 2019 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bill: UITextField!
    @IBOutlet weak var tip: UILabel!
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let b = Double(bill.text!) ?? 0
        let percentage = [0.15, 0.18, 0.20]
        let t = b * percentage[tipControl.selectedSegmentIndex]
        let tot = b + t
        tip.text = String(format: "$%.2f", t)
        total.text = String(format: "$%.2f", tot)
        
    }
}

