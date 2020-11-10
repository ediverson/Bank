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
        amountLabel.text = amount.description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateAmountLabel()
    }


}

