//
//  CurrencyTextField.swift
//  WindowShopper
//
//  Created by Wei Jin on 2017-08-18.
//  Copyright © 2017 Wei Jin. All rights reserved.
//

import UIKit
@IBDesignable

class CurrencyTextField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        
    }
    
    func customizeView(){
        backgroundColor = #colorLiteral(red: 0.9961721301, green: 0.9902489781, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor:UIColor.white])
            attributedPlaceholder = place
            textColor = UIColor.white
        }
    }
    
}
