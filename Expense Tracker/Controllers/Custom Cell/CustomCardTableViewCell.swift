//
//  CustomCardTableViewCell.swift
//  Expense Tracker
//
//  Created by Dhruvil Patel on 2020-12-27.
//

import UIKit

class CustomCardTableViewCell: UITableViewCell {
    @IBOutlet weak var img_category: UIImageView!
    @IBOutlet weak var lbl_title: UILabel!
    @IBOutlet weak var lbl_date: UILabel!
    @IBOutlet weak var lbl_amount: UILabel!
    @IBOutlet weak var card_view: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func configure_cell(img: UIImage, title: String, date: String, amount: String, subCategory: String, incomeOrExpense: String) {
        CustomCardCellConditions.shared.setTintColor(subCategoryName: subCategory, img: img_category)
        CustomCardCellConditions.shared.checkIncomeOrExpense(incOrExp: incomeOrExpense, amount_lbl: lbl_amount)
        img_category.image = img
        lbl_title.text = title
        lbl_date.text = date
        lbl_amount.text = amount
    }
    


}
