//
//  CustomCardCellConditions.swift
//  Expense Tracker
//
//  Created by Dhruvil Patel on 2020-12-28.
//

import UIKit

public class CustomCardCellConditions {
    
    static let shared = CustomCardCellConditions()
    
    enum SubCategory:String {
        case Travel
        case Car
        case Salary
        case Shopping
        case Home
    }
    
    enum IncomeOrExpense: String {
        case Income
        case Expense
    }
    
    func setTintColor(subCategoryName: String, img: UIImageView) {
        if subCategoryName == SubCategory.Travel.rawValue{
            img.tintColor = .systemYellow
        }else if subCategoryName == SubCategory.Car.rawValue{
            img.tintColor = .systemRed
        }else if subCategoryName == SubCategory.Salary.rawValue{
            img.tintColor = .systemGreen
        }else if subCategoryName == SubCategory.Shopping.rawValue{
            img.tintColor = .systemPurple
        }else if subCategoryName == SubCategory.Home.rawValue{
            img.tintColor = .systemIndigo
        }else{
            img.tintColor = .systemGray
        }
    }
    
    func checkIncomeOrExpense(incOrExp:String, amount_lbl: UILabel) {
        if incOrExp == IncomeOrExpense.Expense.rawValue{
            amount_lbl.textColor = .systemRed
        }else if incOrExp == IncomeOrExpense.Income.rawValue{
            amount_lbl.textColor = .systemGreen
        }
    }
    
}
