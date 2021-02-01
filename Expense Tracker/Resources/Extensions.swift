//
//  Extensions.swift
//  Expense Tracker
//
//  Created by Dhruvil Patel on 2020-12-28.
//

import UIKit

// MARK: -UIImage Extension
// MARK: - Delete this section if needed
extension UIImage{
    
    
    /// Adds titnt color on imges
    /// - Parameter tintColor: color which you want to change your image to
    /// - Returns: return new image
    func imageWithColor(tintColor: UIColor) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(self.size, false, self.scale)

        let context = UIGraphicsGetCurrentContext()!
        context.translateBy(x: 0, y: self.size.height)
        context.scaleBy(x: 1.0, y: -1.0);
        context.setBlendMode(.normal)

        let rect = CGRect(x: 0, y: 0, width: self.size.width, height: self.size.height) as CGRect
        context.clip(to: rect, mask: self.cgImage!)
        tintColor.setFill()
        context.fill(rect)

        let newImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        return newImage
    }
        
    
    /// sets background of an image
    /// - Parameters:
    ///   - color: color of background
    ///   - opaque: boolean value
    /// - Returns: UIGraphicsGetImageFromCurrentImageContext
    func withBackground(color: UIColor, opaque: Bool = true) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, opaque, scale)
            
        guard let ctx = UIGraphicsGetCurrentContext(), let image = cgImage else { return self }
        defer { UIGraphicsEndImageContext() }
            
        let rect = CGRect(origin: .zero, size: size)
        ctx.setFillColor(color.cgColor)
        ctx.fill(rect)
        ctx.concatenate(CGAffineTransform(a: 1, b: 0, c: 0, d: -1, tx: 0, ty: size.height))
        ctx.draw(image, in: rect)
            
        return UIGraphicsGetImageFromCurrentImageContext() ?? self
      }
    
    
}

// MARK: - Extension for UIViewController
extension UIViewController {
    
    /// Dismiss keyboard when tapped anywhere on screen
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
