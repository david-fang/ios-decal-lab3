//
//  CircleView.swift
//  Stopwatch
//
//  Created by David Fang on 2/22/17.
//  Copyright © 2017 David Fang. All rights reserved.
//

import Foundation
import UIKit

class CircleView: UIView {
    
    @IBInspectable var borderTint: UIColor = UIColor.white
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        self.clipsToBounds = true
        self.layer.cornerRadius = 0.5 * self.bounds.size.width
        self.layer.borderWidth = 2.0
        self.layer.borderColor = self.borderTint.cgColor
    }
    
}
