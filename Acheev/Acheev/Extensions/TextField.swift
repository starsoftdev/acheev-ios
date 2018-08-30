//
//  TextField.swift
//  Acheev
//
//  Created by Roman Salazar Lopez on 8/29/18.
//  Copyright © 2018 Roman Salazar Lopez. All rights reserved.
//

import UIKit

class TextField: UITextField {
    
    @IBInspectable var padding: CGFloat = 0
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + padding, y: bounds.origin.y, width: bounds.width - padding * 2, height: bounds.height)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + padding, y: bounds.origin.y, width: bounds.width - padding * 2, height: bounds.height)
    }
}
