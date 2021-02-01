//
//  SelectCategoryViewController.swift
//  Expense Tracker
//
//  Created by Dhruvil Patel on 2021-02-01.
//

import UIKit

class SelectCategoryViewController: UIViewController {

    @IBOutlet weak var lbl_entry_type: UILabel!
    var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let text = text {
            lbl_entry_type.text = text
        }

    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
//        _ = navigationController?.popToRootViewController(animated: true) to go back to root view controller programmatically

    }
    

}
