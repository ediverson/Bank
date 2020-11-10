//
//  ViewController.swift
//  Bank
//
//  Created by Антон Старков on 09.11.2020.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var amountLabel: UILabel!
    
    var amount = 99.85{
        didSet{
            updateAmountLabel()
        }
    }
    
    
    func updateAmountLabel() {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencySymbol = "$"
        
        let number = NSNumber(value: amount)
        amountLabel.text = formatter.string(from: number)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateAmountLabel()
    }


}

