//
//  UIViewClass.swift
//  weatherapp-Bitcot
//
//  Created by Bravery Infotech on 15/02/23.
//

import Foundation
import UIKit

@IBDesignable class UIViewClass: UITextView {
    
    private let ButtonPadding: CGFloat = 50
    
    //MARK: - Background color
    @IBInspectable var backgroundColorCode: UIColor = UIColor.clear {
        didSet {
            self.backgroundColor =  backgroundColorCode
        }
    }
    
    //MARK: Border color
    @IBInspectable var borderColorCode: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColorCode.cgColor
        }
    }
    
    
    //MARK: Border width
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    
    
    //Mark: - Corner radious
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
}
