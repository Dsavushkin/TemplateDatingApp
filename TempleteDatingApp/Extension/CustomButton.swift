//
//  CustomButton.swift
//  TempleteDatingApp
//
//  Created by Дмитрий on 16.03.2021.
//

import UIKit

class CustomButton: UIButton {

    
    override func draw(_ rect: CGRect) {
        layer.cornerRadius = 5
        clipsToBounds = true
        
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
