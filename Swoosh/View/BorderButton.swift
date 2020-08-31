//
//  BorderButton.swift
//  Swoosh
//
//  Created by Rares Man on 20.08.2020.
//  Copyright © 2020 Rares Man. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
