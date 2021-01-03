//
//  CustomCardCellConditions.swift
//  Expense Tracker
//
//  Created by Dhruvil Patel on 2020-12-28.
//

import UIKit

public class CustomCardCellConditions {
    
    static let shared = CustomCardCellConditions()
    
    enum IncomeOrExpense: String {
        case Income
        case Expense
    }
    
    let colorArray : [UIColor] = [.systemBlue, .systemPink, .systemTeal,
                                  .systemOrange, .systemYellow, .systemPurple,
                                  .systemIndigo
    ]
    
//    var c = ".systemBlue" --->  use UIColor(named: c) to convert string into c
    
    /// Set image tint color
    /// - Parameters:
    ///   - incOrExp: passed incOrExp for conditional checking and change tint color of image
    ///   - img: image which you want to change color
    func setTintColor(incOrExp: String, img: UIImageView) {
        let randomInt = Int.random(in: 1..<colorArray.count)
        if incOrExp == IncomeOrExpense.Expense.rawValue{
            img.tintColor = colorArray[randomInt]
        }else{
            img.tintColor = .systemGreen
        }
    }
    
    /// Checks if entry is income or expense and then changes color of label
    /// - Parameters:
    ///   - incOrExp: income or expense conditional check string
    ///   - amount_lbl: label which you want to change color
    func checkIncomeOrExpense(incOrExp:String, amount_lbl: UILabel) {
        if incOrExp == IncomeOrExpense.Expense.rawValue{
            amount_lbl.textColor = .systemRed
        }else if incOrExp == IncomeOrExpense.Income.rawValue{
            amount_lbl.textColor = .systemGreen
        }
    }
    
}
