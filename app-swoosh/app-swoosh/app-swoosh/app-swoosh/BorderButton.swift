//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Wei Jin on 2017-08-13.
//  Copyright © 2017 Wei Jin. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
