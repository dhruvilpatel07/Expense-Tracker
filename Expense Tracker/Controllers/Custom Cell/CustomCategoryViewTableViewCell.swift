//
//  CustomCategoryViewTableViewCell.swift
//  Expense Tracker
//
//  Created by Dhruvil Patel on 2020-12-29.
//

import UIKit

class CustomCategoryViewTableViewCell: UITableViewCell {
    @IBOutlet weak var img_category_type: UIImageView!
    @IBOutlet weak var lbl_category_name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure_cell(img: UIImage, category_name: String) {
        img_category_type.image = img
        lbl_category_name.text = category_name
    }

}
