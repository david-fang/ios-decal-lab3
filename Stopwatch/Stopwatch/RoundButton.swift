//
//  RoundButton.swift
//  Stopwatch
//
//  Created by David Fang on 2/16/17.
//  Copyright © 2017 David Fang. All rights reserved.
//

import UIKit

class RoundButton: UIButton {
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        self.layer.cornerRadius = 0.5 * self.bounds.size.width
        self.clipsToBounds = true
        
        self.layer.borderWidth = 1
        self.layer.borderColor = self.titleLabel?.textColor.cgColor
    }
    
}
