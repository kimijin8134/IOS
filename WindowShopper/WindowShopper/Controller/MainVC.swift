//
//  ViewController.swift
//  WindowShopper
//
//  Created by Wei Jin on 2017-08-18.
//  Copyright © 2017 Wei Jin. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var WageText: CurrencyTextField!
    
    @IBOutlet weak var PriceText: CurrencyTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let calculateButton = UIButton(frame: CGRect(x:0,y:0,width:view.frame.size.width,height:60))
        calculateButton.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calculateButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        WageText.inputAccessoryView = calculateButton
        PriceText.inputAccessoryView = calculateButton
    }
    
    @objc func calculate(){
        
    }
    
    
}

