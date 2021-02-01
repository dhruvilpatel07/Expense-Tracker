//
//  CustomCardView.swift
//  Expense Tracker
//
//  Created by Dhruvil Patel on 2020-12-27.
//

import Foundation
import UIKit

/// Custom card view for HomeViewController
class CustomCardView : UIView{
    var cornerRadius : CGFloat = 3
    var offSetWidth: CGFloat = 1
    var offSetHeight: CGFloat = 1
    var offSetShadowOpacity : Float = 0.5
    var shadowColor : UIColor = UIColor.gray
    
    override func layoutSubviews() {
        layer.cornerRadius = self.cornerRadius
        layer.shadowColor = self.shadowColor.cgColor
        layer.shadowOffset = CGSize(width: self.offSetWidth, height: self.offSetHeight)
        layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: self.cornerRadius).cgPath
        layer.shadowOpacity = self.offSetShadowOpacity
    }
}
